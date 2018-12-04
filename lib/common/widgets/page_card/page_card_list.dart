import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/widgets/page_card/page_card_item.dart';
import 'package:marvel/common/widgets/ui_elements.dart'
    show loadingView, emptyView;
import 'package:marvel/core/blocs/core_paged_bloc.dart';
import 'package:marvel/core/blocs/core_page_bloc.dart';
import 'package:marvel/core/views/core_view_slice.dart';
import 'package:marvel/common/widgets/theme.dart';

/// Displays a finite list of coreItemModels.
class PageCardList<T> extends StatelessWidget {
  /// The number of items that will be rendered as loading below the last
  /// loaded item.
  ///
  /// When this is `0`, the user is not able to scroll beyond the items that
  /// are already loaded. If it's a small number, the user is not able to
  /// "flick" many pages down the coreItemModels, since the scrolling stops.
  static const _loadingSpace = 2;

  //final Stream<CoreSliceView> slice;
  final CorePagedBloc corePagedBloc;
  final CorePageBloc<T> corePageBloc;

  const PageCardList(
      {Key key,
      //@required this.slice,
      @required this.corePagedBloc,
      @required this.corePageBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
      color: Color(themeColorBk),
      child: StreamBuilder<CoreSliceView>(
          stream: corePagedBloc.slice,
          initialData: corePagedBloc.slice.value,
          builder: (context, snapshot) {
            if (corePagedBloc.totalItemCount == 0) {
              return emptyView(
                  context, MarvelLocalizations.of(context).noneFoundText);
            } else {
              return ListView.builder(
                itemCount: snapshot.data.endIndex + _loadingSpace,
                itemBuilder: (context, index) => _createPageCard(
                      index,
                      snapshot.data,
                      corePagedBloc,
                      corePageBloc,
                    ),
              );
            }
          }),
    );
  }

  /// Builds a card of the coreItemModel on a given [index] in the coreItemModels.
  /// Also sends the [index] to the [corePagedBloc] so it can potentially load
  /// more data.
  Widget _createPageCard(int index, CoreSliceView slice,
      CorePagedBloc corePagedBloc, CorePageBloc<T> corePageBloc) {
    if (index == corePagedBloc.totalItemCount) {
      return Container();
    }

    // Notify CorePaged BLoC of the latest index that the framework is trying
    // to build.
    corePagedBloc.index.add(index);
    // print('index: $index');

    // Get data.
    final coreItemModel = slice.elementAt(index);

    // Display spinner if waiting for data.
    if (coreItemModel == null) {
      return loadingView();
    }

    // Display data.
    return PageCardItem<T>(
      cardModel: coreItemModel, // as T,
      corePageBloc: corePageBloc,
      isPageCardItemViewBloc: true,
    );
  }
}
