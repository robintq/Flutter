import 'dart:async';

import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/core/blocs/core_bloc.dart';
import 'package:marvel/core/models/core_item_addition_model.dart';
import 'package:marvel/core/models/core_view_model.dart';
import 'package:marvel/core/models/core_item_view_model.dart';
import 'package:rxdart/subjects.dart';

class CorePageBloc<T> implements CoreBloc {
  // This is the internal state. It's mostly a helper object so that the code
  // in this class only deals with streams.
  final _coreViewModel = CoreViewModel<T>();

  // These are the internal objects whose streams / sinks are provided
  // by this component. See below for what each means.
  final _items =
      BehaviorSubject<List<CoreItemViewModel<CardModel>>>(seedValue: []);
  final _itemCount = BehaviorSubject<int>(seedValue: 0);
  final _coreItemModelAdditionController =
      StreamController<CoreItemAdditionModel<T>>();

  CorePageBloc() {
    _coreItemModelAdditionController.stream.listen(_handleAddition);
  }

  /// This is the input of additions to the core_page. Use this to signal
  /// to the component that user is trying to add an item.
  Sink<CoreItemAdditionModel<T>> get coreItemAdditionModel =>
      _coreItemModelAdditionController.sink;

  /// This stream has a new value whenever the count of items in the core_page
  /// changes.
  ///
  /// We're using the `distinct()` transform so that only values that are
  /// in fact a change will be published by the stream.
  Stream<int> get itemCount => _itemCount.stream.distinct();

  /// This is the stream of items in the core_page. Use this to show the contents
  /// of the core_page when you need all the information in [CoreItemViewModel].
  Stream<List<CoreItemViewModel>> get coreViewItemModels => _items.stream;

  /// Take care of closing streams.
  void dispose() {
    _items.close();
    _itemCount.close();
    _coreItemModelAdditionController.close();
  }

  /// Business logic for adding characters to core_page. Adds new events to outputs
  /// as needed.
  void _handleAddition(CoreItemAdditionModel<T> addition) {
    _coreViewModel.add(addition.coreItemModel, addition.count);
    _items.add(_coreViewModel.items);
    _itemCount.add(_coreViewModel.itemCount);
  }
}
