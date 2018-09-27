import 'dart:async';
import 'dart:collection';

import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/models/screen_list_model.dart';
import 'package:marvel/common/repositories/marvels_repository.dart';
import 'package:marvel/core/blocs/core_bloc.dart';

class ApplicationBloc implements CoreBloc {
  StreamController<List<Screen>> _outScreenController =
      StreamController<List<Screen>>.broadcast();
  get getScreens => _outScreenController.stream;

  StreamController<List<Screen>> _inScreenController =
      StreamController<List<Screen>>.broadcast();
  Function(List<Screen>) get addScreens => _inScreenController.sink.add;

  ApplicationBloc() {
    marvelsRepository
        .getScreens()
        .then((screenList) => _screenListModel = screenList);

    _inScreenController.stream.listen((_) => _outScreenController.sink
        .add(UnmodifiableListView<Screen>(_screenListModel.screens)));
  }

  ScreenListModel _screenListModel;

  @override
  void dispose() {
    _outScreenController.close();
    _inScreenController.close();
  }
}
