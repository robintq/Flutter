import 'dart:async';

import 'package:marvel/core/models/core_item_list_model.dart';

abstract class CoreRepository {
  set screenUri(String uri);
  Future<CoreItemListModel> fetchPage(
      String nameStartsWith, int limit, int offset);
}
