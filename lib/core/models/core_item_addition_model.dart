import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/core/models/core_item.dart';

class CoreItemAdditionModel<T> extends CoreItem {
  final CardModel coreItemModel;

  CoreItemAdditionModel(this.coreItemModel, [int count = 1]) : super(count);
}
