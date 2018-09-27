import 'dart:async';

import 'package:marvel/common/widgets/page_card/page_card_item_view.dart';
import 'package:marvel/common/widgets/ui_elements.dart'
    show RenderFavouriteIcon;
import 'package:flutter/material.dart';
import 'package:marvel/core/blocs/core_page_item_bloc.dart';
import 'package:marvel/core/models/core_item_view_model.dart';

/// In this version of [PageCardItemViewBloc], the widget must be a [StatefulWidget]
/// because it has a [CorePageItemBloc] that it needs to dispose of
/// when it's no longer needed.
class PageCardItemViewBloc<T> extends StatefulWidget {
  /// The item to be rendered.
  final T coreItemModel;
  final bool isRenderStar;

  /// The observable list of items in the core_page. This is used to render
  /// items that are already in the core_page differently.
  ///
  /// This will be piped into this widget's [CorePageItemBloc].
  final Stream<List<CoreItemViewModel>> coreViewItemModels;
  final GestureTapCallback onFavTap;

  const PageCardItemViewBloc(
      {Key key,
      @required this.coreItemModel,
      @required this.isRenderStar,
      @required this.coreViewItemModels,
      @required this.onFavTap})
      : super(key: key);

  @override
  _PageCardItemViewBlocState createState() => _PageCardItemViewBlocState();
}

class _PageCardItemViewBlocState<T> extends State<PageCardItemViewBloc> {
  /// The business logic component for the [PageCardItemBloc] widget.
  ///
  /// In our sample this might be overkill, but in a real app the widget will
  /// get much more complicated (fetching images, availability, Favourite status,
  /// etc.).
  CorePageItemBloc<T> _bloc;

  /// Because we're piping an output of one BLoC into an input of another,
  /// we need to hold the subscription object in order to cancel it later.
  StreamSubscription _subscription;

  @override
  Widget build(BuildContext context) {
    final favouriteIcon = StreamBuilder<bool>(
      stream: _bloc.isInPageCardItem,
      initialData: false,
      builder: (context, snapshot) => RenderFavouriteIcon(
          widget.onFavTap, widget.isRenderStar, snapshot.data),
    );

    // final imageUrl = MarvelHelper.getImageUrl(
    //     widget.coreItemModel.thumbnail.path,
    //     widget.coreItemModel.thumbnail.extension);

    // final cardModel = getCardModelByType(T, widget.coreItemModel, imageUrl);
    // print('_PageCardItemViewBlocState imageUrl: ${cardModel.imageUrl}}');

    final container = PageCardItemView(
      cardModel: widget.coreItemModel,
      //cardModel,
      // CardModel(widget.coreItemModel.title,
      //     widget.coreItemModel.description, imageUrl),
      isRenderStar: true,
      onFavTap: () => widget.onFavTap,
      favouriteIcon: favouriteIcon,
    );

    return container;
  }

  /// Create the [CorePageItemBloc] and pipe the stream of coreViewItemModels
  /// into its [CorePageItemBloc.pageCardItems] input.
  void _createBloc() {
    _bloc = CorePageItemBloc<T>(widget.coreItemModel);
    // print('_bloc.pageCardItems: ${_bloc.pageCardItems}');
    // widget.coreViewItemModels.first
    //     .then((value) => print('widget.coreViewItemModels.first: $value'));
    _subscription = widget.coreViewItemModels.listen(_bloc.pageCardItems.add);
  }

  /// Remember: widgets can change from above the [State] at the framework's
  /// discretion. We need to make sure we always update the [State]
  /// to reflect the [StatefulWidget].
  ///
  /// Here, we're disposing of the old [_bloc] and creating a new one.
  @override
  void didUpdateWidget(PageCardItemViewBloc oldWidget) {
    super.didUpdateWidget(oldWidget);
    _disposeBloc();
    _createBloc();
  }

  @override
  void dispose() {
    _disposeBloc();
    super.dispose();
  }

  /// Initialize business logic components that you will be disposing of in
  /// [initState].
  @override
  void initState() {
    super.initState();
    _createBloc();
  }

  void _disposeBloc() {
    _subscription.cancel();
    _bloc.dispose();
  }
}
