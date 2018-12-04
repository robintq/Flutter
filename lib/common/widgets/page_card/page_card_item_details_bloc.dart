import 'dart:async';
import 'dart:ui' as ui show Image;

import 'package:flutter/material.dart';
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/utils/marvel_helper.dart';
import 'package:marvel/common/utils/network_image_load_callback.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/core/blocs/core_page_bloc.dart';
import 'package:marvel/core/blocs/core_page_item_bloc.dart';
import 'package:marvel/core/models/core_item_addition_model.dart';
import 'package:rxdart/rxdart.dart';

class PageCardItemDetailsBloc<T> extends StatefulWidget {
  /// The item to be rendered.
  final CorePageBloc<T> favouritesBloc;

  PageCardItemDetailsBloc({
    Key key,
    @required this.favouritesBloc,
  }) : super(key: key);

  @override
  _PageCardItemDetailsBlocState<T> createState() =>
      _PageCardItemDetailsBlocState<T>();
}

class _PageCardItemDetailsBlocState<T> extends State<PageCardItemDetailsBloc>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  CardModel _cardModel;
  GestureTapCallback _onTap;

  AnimationController _controller;
  Animation<double> _contentsOpacity;
  Animation<Offset> _bgImagePosition;
  bool _showBgImageOnly = false;

  /// The business logic component for the [PageCardItemDetailsBloc] widget.
  ///
  /// In our sample this might be overkill, but in a real app the widget will
  /// get much more complicated (fetching images, availability, Favourite status,
  /// etc.).
  CorePageItemBloc<T> _bloc;

  /// Because we're piping an output of one BLoC into an input of another,
  /// we need to hold the subscription object in order to cancel it later.
  StreamSubscription _subscription;

  final _isImageLoaded = BehaviorSubject<bool>();

  BuildContext _context;

  var imageUrl = '';

  imageLoaded(ui.Image image) {
    if (!_isImageLoaded.isClosed) _isImageLoaded.add(true);
    _isImageLoaded.close();
  }

  @override
  Widget build(BuildContext context) {
    var coreProvider = ScreenProvider.of(context);
    _cardModel = coreProvider.coreItemBloc.coreItemModel;
    _createBloc();

    // print('CoreItemAdditionModel<T>: ${T}');
    _onTap = () => widget.favouritesBloc.coreItemAdditionModel
        .add(CoreItemAdditionModel<T>(coreProvider.coreItemBloc.coreItemModel));

    _context = context;

    imageUrl = MarvelHelper.getImageUrl(_cardModel.path, _cardModel.extension,
        imageSize: ImageVariant.portrait_uncanny);

    NetworkImageLoadCallback.load(context, imageUrl, imageLoaded);

    var notificationBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        padding: EdgeInsets.only(top: notificationBarHeight),
        constraints: BoxConstraints.expand(),
        color: Color(themeColor),
        child: StreamBuilder<bool>(
          stream: _isImageLoaded.stream,
          initialData: false,
          builder: (context, isImageLoaded) => Stack(
                children: _buildWidgets(context, isImageLoaded.data),
              ),
        ),
      ),
    );
  }

  List<Widget> _buildWidgets(BuildContext context, bool isImageLoaded) {
    List<Widget> widgets = [];

    if (isImageLoaded) {
      widgets.add(_getBackground());
      widgets.add(_getGradient());
      widgets.add(_getContent(Theme.of(context).textTheme));
    } else {
      widgets.add(loadingView());
    }
    widgets.add(_getToolbar(context));

    return widgets;
  }

  Widget _getBackground() {
    return SlideTransition(
      position: _bgImagePosition,
      child: Container(
        constraints: BoxConstraints.expand(),
        child: Image(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }

  Widget _getGradient() {
    return FadeTransition(
      opacity: _contentsOpacity,
      child: Container(
        decoration: picBoxDecorationLinearGradient,
      ),
    );
  }

  Widget _getContent(TextTheme textTheme) {
    return FadeTransition(
      opacity: _contentsOpacity,
      child: Container(
        padding: EdgeInsets.fromLTRB(15.0, 72.0, 15.0, 10.0),
        child: Column(
          children: <Widget>[
            buildName(textTheme, _cardModel.name),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: _getContentDetails(textTheme),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _getContentDetails(TextTheme textTheme) {
    List<Widget> children = [];

    children.add(buildDescription(textTheme, _cardModel.description
        // + description +
        // description +
        // description +
        // description +
        // description
        ));
    children.add(Divider()); //const SizedBox(height: 8.0),
    // print('Type: ${classType}');
    children.addAll(buildItemDetailLinkList(T, _cardModel.screenUri, _context));

    return children;
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      // margin:
      //     EdgeInsets.only(top: MediaQuery.of(context).padding.top, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BackButton(color: buttonColor),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.picture_in_picture,
              color: iconColor,
            ),
            onPressed: () => _showHideBgImage(),
          ),
          GestureDetector(
            onTap: _onTap,
            child: StreamBuilder<bool>(
              stream: _bloc.isInPageCardItem,
              initialData: false,
              builder: (context, snapshot) => Icon(
                    snapshot.data ? Icons.star : Icons.star_border,
                    color: iconColor,
                  ),
            ),
          )
        ],
      ),
    );
  }

  _showHideBgImage() {
    _showBgImageOnly = !_showBgImageOnly;
    if (_showBgImageOnly)
      _controller.reverse();
    else
      _controller.forward();
  }

  /// Create the [CorePageItemBloc] and pipe the stream of coreViewItemModels
  /// into its [CorePageItemBloc.pageCardItems] input.
  void _createBloc() {
    print('cardModel: ${_cardModel.name}');
    _bloc = CorePageItemBloc<T>(_cardModel);
    _subscription = widget.favouritesBloc.coreViewItemModels
        .listen(_bloc.pageCardItems.add);
  }

  /// Remember: widgets can change from above the [State] at the framework's
  /// discretion. We need to make sure we always update the [State]
  /// to reflect the [StatefulWidget].
  ///
  /// Here, we're disposing of the old [_bloc] and creating a new one.
  @override
  void didUpdateWidget(PageCardItemDetailsBloc<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _disposeBloc();
    _createBloc();
  }

  @override
  void dispose() {
    print('PageCardItemDetailsBloc dispose.');

    _controller.dispose();
    _disposeBloc();
    _isImageLoaded.close();
    super.dispose();
  }

  /// Initialize business logic components that you will be disposing of in
  /// [initState].
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _contentsOpacity = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );

    _bgImagePosition = Tween<Offset>(
      begin: const Offset(0.0, 0.06),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));

    _controller.forward();
  }

  void _disposeBloc() {
    _subscription.cancel();
    _bloc.dispose();
  }
}
