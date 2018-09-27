import 'dart:async';

import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/core/blocs/core_bloc.dart';
import 'package:marvel/core/models/core_item_view_model.dart';
import 'package:rxdart/rxdart.dart';

/// Although many business logic components (BLoCs) will be at
/// the app (or screen) level, you can have BLoCs attached to single
/// UI elements.
///
/// This particular component only provides the [isInPageCardItem] output, which
/// is informed by the input stream of [pageCardItems].
///
/// Note that we are _not_ providing [CorePageBloc] to the [CorePageItemBloc]
/// directly, although it would be easier to implement. BLoCs should not
/// depend on other BLoCs (separation of concerns). They can only communicate
/// with each other using streams. In this case, the [CorePageBloc.coreViewItemModels] output
/// plugs into the [CorePageItemBloc.pageCardItems] input.
class CorePageItemBloc<T> implements CoreBloc {
  final _isInPageCardItemSubject = BehaviorSubject<bool>();

  final _pageCardItemsController =
      StreamController<List<CoreItemViewModel<CardModel>>>();

  // dynamic coreItemModel1 = coreItemModel;
  // {
  //   return list.any((item) {
  //     dynamic coreItemModel2 = item.coreItemModel;
  //     if (coreItemModel1 == null || coreItemModel2 == null) return false;
  //     return coreItemModel1.id == coreItemModel2.id;
  //     // return (item.coreItemModel as T) == coreItemModel;
  //   });
  // }

  CorePageItemBloc(CardModel coreItemModel) {
    _pageCardItemsController.stream
        .map(
            (list) => list.any((item) => (item.coreItemModel) == coreItemModel))
        .listen((isInPageCardItem) =>
            _isInPageCardItemSubject.add(isInPageCardItem));
  }

  Sink<List<CoreItemViewModel<CardModel>>> get pageCardItems =>
      _pageCardItemsController.sink;

  /// Tells the [PageCardItem] widget whether its character is already
  /// in Favourite_characters or not.
  Stream<bool> get isInPageCardItem => _isInPageCardItemSubject.stream;

  /// This business logic component will have shorter lifespan than the app
  /// so we do need to dispose of it properly.
  void dispose() {
    _pageCardItemsController.close();
    _isInPageCardItemSubject.close();
  }
}
