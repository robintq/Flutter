import 'dart:math';

import 'package:marvel/core/models/core_item_model.dart';
import 'package:marvel/core/views/core_page_view.dart';

/// A slice of the core provided to an finite-scrolling [ListView].
///
/// A [CoreSliceView] is a convenience class backed by an arbitrary
/// number of [CorePageView]s. Most of the time, there is more than one
/// [CorePageView] in memory — but the view code should _not_ need to worry about
/// that.
class CoreSliceView {
  final List<CorePageView> _pages;

  /// The index at which this slice starts to provide [CoreItemModel]s.
  final int startIndex;

  /// Whether or not this slice is the end of the core.
  ///
  /// Currently always `true` as our core is infinite.
  final bool hasNext;

  CoreSliceView(this._pages, this.hasNext)
      : startIndex = _pages.map((p) => p.startIndex).fold(0x7FFFFFFF, min);

  const CoreSliceView.empty()
      : _pages = const [],
        startIndex = 0,
        hasNext = true;

  /// The index of the last item of this slice.
  int get endIndex =>
      startIndex + _pages.map((page) => page.endIndex).fold(-1, max);

  /// Returns the item at [index], or `null` if data isn't loaded yet.
  CoreItemModel elementAt(int index) {
    for (final page in _pages) {
      if (index >= page.startIndex && index <= page.endIndex) {
        return page.coreItemModels[index - page.startIndex];
      }
    }
    return null;
  }

  /// Returns the item with [id], or `null` if data isn't loaded yet.
  CoreItemModel elementById(int id) {
    for (final page in _pages) {
      for (final coreItemModel in page.coreItemModels) {
        dynamic item = coreItemModel;
        if (item.id == id) return item;
      }
    }
    return null;
  }
}
