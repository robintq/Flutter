import 'dart:collection';

import 'package:marvel/core/models/core_item_model.dart';

/// A page of core model items fetched from network.
///
/// This mimics a paginated web API response, where you don't get results
/// one by one but in batches.
class CorePageView {
  final List<CoreItemModel> _coreItemModels;

  final int startIndex;

  CorePageView(this._coreItemModels, this.startIndex);

  int get count => _coreItemModels.length;

  int get endIndex => startIndex + count - 1;

  UnmodifiableListView<CoreItemModel> get coreItemModels =>
      UnmodifiableListView<CoreItemModel>(_coreItemModels);

  @override
  String toString() => "_CoreViewPage($startIndex-$endIndex)";
}
