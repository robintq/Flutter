import 'package:marvel/common/models/marvel_model.dart';

class ScreenListModel {
  List<Screen> screens = <Screen>[];

  ScreenListModel.fromLIST(List<Screen> screenList) : screens = screenList;

  Screen findByName(Screen searchScreen) =>
      screens.firstWhere((screen) => screen == searchScreen);
}
