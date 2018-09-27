import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/core/models/core_item.dart';

/// A single line in the core view item model.

class CoreItemViewModel<T> extends CoreItem {
  final CardModel coreItemModel;

  CoreItemViewModel(this.coreItemModel, count) : super(count);
}
