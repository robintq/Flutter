import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/models/stories/stories_model.dart';

import 'package:marvel/core/models/core_item_list_model.dart';
import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/core/repositories/core_repository.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/common/utils/marvel_helper.dart';

class StoriesRepository extends CoreRepository {
  String _screenUri = '';
  set screenUri(String uri) => _screenUri = uri;

  final http.Client _client = http.Client();

  @override
  Future<CoreItemListModel> fetchPage(
      String nameStartsWith, int limit, int offset) async {
    try {
      String _url = apiUrl(nameStartsWith, limit, offset);
      print(_url);
      final response = await _client.get(_url);
      //print(response.statusCode);

      if (response.statusCode == HttpStatus.ok) {
        StoryDataWrapper dataWrapper = modelSerializers.deserializeWith(
            StoryDataWrapper.serializer, json.decode(response.body));

        var total = dataWrapper.data.total;

        var coreItemModels = dataWrapper.data.results
            .map(
              (Story coreItemModel) => CardModel(
                    id: coreItemModel.id,
                    name: coreItemModel.title,
                    description: coreItemModel.description == null
                        ? ''
                        : coreItemModel.description,
                    path: coreItemModel.thumbnail == null
                        ? 'https://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available'
                        : coreItemModel.thumbnail.path,
                    extension: coreItemModel.thumbnail == null
                        ? 'jpg'
                        : coreItemModel.thumbnail.extension,
                    screenUri: ScreenUri(
                      charactersUri: coreItemModel.characters.collectionURI,
                      comicsUri: coreItemModel.comics.collectionURI,
                      creatorsUri: coreItemModel.creators.collectionURI,
                      eventsUri: coreItemModel.events.collectionURI,
                      seriesUri: coreItemModel.series.collectionURI,
                      storiesUri: '',
                    ),
                  ),
            )
            .toList();

        return CoreItemListModel(coreItemModels, total);
      } else {
        log("Failed http call."); // Perhaps handle it somehow
      }
    } catch (exception) {
      print('Exception: ${exception.toString()}');
      log(exception.toString());
    }
    return null;
  }

  String apiUrl(String nameStartsWith, int limit, int offset) {
    String url = MarvelHelper.getApiUrl(Screen.Comics, _screenUri);
    if (nameStartsWith.trim().length > 0)
      url += '&nameStartsWith=$nameStartsWith';
    url += '&orderBy=-modified&limit=$limit&offset=$offset';

    return url;
  }
}
