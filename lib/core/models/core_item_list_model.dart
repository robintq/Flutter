import 'package:marvel/core/models/core_item_model.dart';

class CoreItemListModel {
  final List<CoreItemModel> _coreItems;
  final _totalItemCount;

  CoreItemListModel(this._coreItems, this._totalItemCount);

  get coreItemModels => _coreItems;
  get totalItemCount => _totalItemCount;
}
