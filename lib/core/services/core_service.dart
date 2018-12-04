import 'dart:async';

import 'package:marvel/core/models/core_item_model.dart';
import 'package:marvel/core/repositories/core_repository.dart';
import 'package:marvel/core/views/core_page_view.dart';

/// A network-backed service class.
class CoreService {
  /// The amount of products in each returned [CatalogPage].
  ///
  /// Changing this variable while the app is running has undefined behavior.
  /// This is intended as a one-time, initial setup variable.
  static const _coreItemModelsPerPage = 20;

  int totalItemCount = -1;

  String _searchText = '';
  void set search(text) => _searchText = text;

  final CoreRepository coreRepository;

  CoreService(this.coreRepository);

  /// Fetches a page of [CoreItemModel]s from a respository. The [CorePageView.startIndex]
  /// of the returned value will be [index].
  Future<CorePageView> requestPage(int index) async {
    List<CoreItemModel> coreItemModels;

    await coreRepository
        .fetchPage(_searchText, _coreItemModelsPerPage, index)
        .then((coreItemListModel) {
      coreItemModels = coreItemListModel.coreItemModels;
      totalItemCount = coreItemListModel.totalItemCount;
    });

    print('index: $index, totalItemCount: $totalItemCount');

    return CorePageView(coreItemModels, index);
  }
}
