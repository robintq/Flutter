import 'dart:collection';
import 'dart:math';

import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/core/models/core_item_view_model.dart';

class CoreViewModel<T> {
  final List<CoreItemViewModel<CardModel>> _items =
      <CoreItemViewModel<CardModel>>[];

  /// Creates an empty CoreViewModel.
  CoreViewModel();

  /// Creates a CoreViewModel from an old CoreViewModel
  CoreViewModel.clone(CoreViewModel<T> coreViewModel) {
    _items.addAll(coreViewModel._items);
  }

  /// Fills the CoreViewModel with a sampling from the given coreItemModel.
  CoreViewModel.sample(Iterable<CardModel> coreItemModels) {
    _items.addAll(coreItemModels.take(3).map(
        (coreItemModel) => CoreItemViewModel<CardModel>(coreItemModel, 1)));
  }

  /// The total count of items in CoreViewModel, including duplicates of the same item.
  ///
  /// This is in contrast of just doing [items.length], which only counts
  /// each character once, regardless of how many are being bought.
  int get itemCount => _items.fold(0, (sum, el) => sum + el.count);

  /// This is the current state of the CoreViewModel.
  ///
  /// This is a list because users expect their CoreViewModel items to be in the same
  /// order they bought them.
  ///
  /// It is an unmodifiable view because we don't want a random widget to
  /// put the CoreViewModel into a bad state. Use [add] and [remove] to modify the state.
  UnmodifiableListView<CoreItemViewModel<CardModel>> get items =>
      UnmodifiableListView(_items);

  /// Adds [coreItemModel] to CoreViewModel. This will either update an existing [CoreItemViewModel]
  /// in [items] or add a one at the end of the list.
  void add(CardModel coreItemModel, [int count = 1]) {
    _updateCount(coreItemModel, count);
  }

  /// Removes [coreItemModel] from CoreViewModel. This will either update the count of
  /// an existing [CoreItemViewModel] in [items] or remove it entirely (if count reaches
  /// `0`.
  void remove(CardModel coreItemModel, [int count = 1]) {
    _updateCount(coreItemModel, -count);
  }

  @override
  String toString() => "$items";

  void _updateCount(CardModel coreItemModel, int difference) {
    // dynamic coreItemModel1 = coreItemModel;
    if (difference == 0) return;
    for (int i = 0; i < _items.length; i++) {
      final item = _items[i];
      // dynamic coreItemModel2 = item.coreItemModel;
      // if (coreItemModel1.id == coreItemModel2.id) {

      // print('coreItemModel: $coreItemModel');
      // print('item.coreItemModel: ${item.coreItemModel}}');

      if (coreItemModel == item.coreItemModel) {
        // final newCount = item.count + difference;
        // if (newCount <= 0) {
        _items.removeAt(i);
        return;
        // }
        // _items[i] = CoreViewModelItem<T>(newCount, item.coreItemModel);
        // return;
      }
    }
    if (difference < 0) return;
    _items.add(CoreItemViewModel<CardModel>(coreItemModel, max(difference, 0)));
  }
}
