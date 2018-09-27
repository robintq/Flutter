import 'package:marvel/core/models/core_item_model.dart';
import 'package:meta/meta.dart';

class CardModel implements CoreItemModel {
  final int id;
  final String name;
  final String description;
  final String path;
  final String extension;
  final ScreenUri screenUri;

  CardModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.path,
    @required this.extension,
    @required this.screenUri,
  });
}

class ScreenUri implements CoreItemModel {
  final String charactersUri;
  final String comicsUri;
  final String creatorsUri;
  final String eventsUri;
  final String seriesUri;
  final String storiesUri;

  ScreenUri({
    @required this.charactersUri,
    @required this.comicsUri,
    @required this.creatorsUri,
    @required this.eventsUri,
    @required this.seriesUri,
    @required this.storiesUri,
  });
}
