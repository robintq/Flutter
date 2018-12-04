import 'dart:async';
import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:marvel/core/blocs/core_bloc.dart';
import 'package:marvel/core/models/core_item_model.dart';
import 'package:marvel/core/repositories/core_repository.dart';
import 'package:marvel/core/views/core_page_view.dart';
import 'package:marvel/core/views/core_view_slice.dart';
import 'package:rxdart/rxdart.dart';

/// This component encapsulates the logic of fetching characters from
/// a database, page by page, according to position in an infinite list.
///
/// Only the data that are close to the current location are cached, the rest
/// are thrown away.
class CorePagedBloc implements CoreBloc {
  static const _coreItemModelsPerPage = 20;

  int totalItemCount = -1;

  // String _screenUri = '';
  // set screenUri(String uri) => _screenUri = uri;

  final CoreRepository coreRepository;

  final _searchSubject = BehaviorSubject<String>();
  String _searchText = '';

  /// We're using ReactiveX's [PublishSubject] here because we want to easily
  /// buffer the stream. See [CorePagedBloc] constructor.
  final _indexController = PublishSubject<int>();

  /// These are the pages stored in memory. For O(1) retrieval, we're storing
  /// them in a [Map]. The key value is [CorePageView.startIndex].
  final _pages = <int, CorePageView>{};

  /// A set of pages that are currently being fetched from the network.
  /// They are identified by their [CorePageView.startIndex].
  final _pagesBeingRequested = Set<int>();

  final _sliceSubject =
      BehaviorSubject<CoreSliceView>(seedValue: CoreSliceView.empty());

  CorePagedBloc(this.coreRepository) {
    createBloc();
  }

  Sink<String> get search => _searchSubject.sink;

  /// An input of the indexes that the [ListView.builder]
  /// (or [GridView.builder]) is getting in its builder callbacks. Just push
  /// the index that you get in a [IndexedWidgetBuilder] down this [Sink].
  ///
  /// The component uses this input to figure out which pages it should
  /// be requesting from the network.
  Sink<int> get index => _indexController.sink;

  /// The currently available data, as a slice of the (potentially infinite)
  /// characters.
  ValueObservable<CoreSliceView> get slice => _sliceSubject.stream;

  /// Outputs the [CorePageView.startIndex] given an arbitrary index of
  /// a character.
  int _getPageStartFromIndex(int index) =>
      (index ~/ _coreItemModelsPerPage) * _coreItemModelsPerPage;

  void createBloc() {
    _searchSubject.stream.listen(_handleSearch);

    _indexController.stream
        // Don't try to update too frequently.
        .bufferTime(Duration(milliseconds: 500))
        // Don't update when there is no need.
        .where((batch) => batch.isNotEmpty)
        .listen(_handleIndexes);
  }

  /// Take care of closing streams.
  void dispose() {
    index.close();
    _indexController.close();
    _searchSubject.sink.close();
  }

  /// This will handle the incoming [indexes] (that were requested by
  /// a [IndexedWidgetBuilder]) and, if needed, will fetch missing data.
  void _handleIndexes(List<int> indexes) {
    // print('indexes: $indexes');

    const maxInt = 0x7fffffff;
    final int minIndex = indexes.fold(maxInt, min);
    final int maxIndex = indexes.fold(-1, max);

    final minPageIndex = _getPageStartFromIndex(minIndex);
    final maxPageIndex = _getPageStartFromIndex(maxIndex);

    for (int i = minPageIndex; i <= maxPageIndex; i += _coreItemModelsPerPage) {
      if (_pages.containsKey(i)) continue;
      if (_pagesBeingRequested.contains(i)) continue;

      _pagesBeingRequested.add(i);
      _requestPage(i).then((page) => _handleNewPage(page, i));
    }

    // Remove pages too far from current scroll position.
    _pages.removeWhere((pageIndex, _) =>
        pageIndex < minPageIndex - _coreItemModelsPerPage ||
        pageIndex > maxPageIndex + _coreItemModelsPerPage);
  }

  /// Handles arrival of a new [page] from the network. Will call
  /// [_handleNewPage].
  void _handleNewPage(CorePageView page, int index) {
    _pages[index] = page;
    _pagesBeingRequested.remove(index);
    _sendNewSlice();
  }

  /// Fetches a page of characters from a database. The [CorePageView.startIndex]
  /// of the returned value will be [offset].
  Future<CorePageView> _requestPage(int offset) async {
    // Simulate network delay.
    //await Future.delayed(const Duration(milliseconds: 300));
    List<CoreItemModel> coreItemModels;
    //CoreItemListModel coreItemListModel;

    // coreRepository.screenUri = _screenUri;

    await coreRepository
        .fetchPage(_searchText, _coreItemModelsPerPage, offset)
        .then((coreItemListModel) {
      coreItemModels = coreItemListModel.coreItemModels;
      totalItemCount = coreItemListModel.totalItemCount;
    });

    print('index: $offset, totalItemCount: $totalItemCount');

    return CorePageView(coreItemModels, offset);
  }

  /// Creates a [CoreSliceView] from the current [_pages] and sends it
  /// down the [slice] stream.
  void _sendNewSlice() {
    final pages = _pages.values.toList(growable: false);
    final lastPageCount = pages.last.count;
    print('itemCount: $lastPageCount');

    final slice =
        CoreSliceView(pages, (lastPageCount == _coreItemModelsPerPage));

    _sliceSubject.add(slice);
  }

  void _handleSearch(String searchText) {
    _searchText = searchText;

    totalItemCount = -1;

    _pages.clear();
    _pagesBeingRequested.clear();
    _handleIndexes([0]);

    final coreItemModels = List<CoreItemModel>.generate(0, (index) => null);
    final coreViewPage = CorePageView(coreItemModels, 0);
    _pages[0] = coreViewPage;
    final pages = _pages.values.toList(growable: false);
    print('pages: $pages');
    final slice = CoreSliceView(pages, true);
    _sliceSubject.add(slice);
  }
}
