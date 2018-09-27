import 'dart:async';

import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/models/screen_list_model.dart';

class MarvelsRepository {
  Future<ScreenListModel> getScreens() async {
    var screenList = Screen.values.map((screen) => screen).toList();
    return ScreenListModel.fromLIST(screenList);
  }
}

MarvelsRepository marvelsRepository = MarvelsRepository();
