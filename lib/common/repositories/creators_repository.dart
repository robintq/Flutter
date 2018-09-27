import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/models/creators/creators_model.dart';

import 'package:marvel/core/models/core_item_list_model.dart';
import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/core/repositories/core_repository.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/common/utils/marvel_helper.dart';

class CreatorsRepository extends CoreRepository {
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
        CreatorDataWrapper dataWrapper = modelSerializers.deserializeWith(
            CreatorDataWrapper.serializer, json.decode(response.body));

        var total = dataWrapper.data.total;

        var coreItemModels = dataWrapper.data.results
            .map(
              (Creator coreItemModel) => CardModel(
                    id: coreItemModel.id,
                    name: coreItemModel.fullName,
                    description: '',
                    path: coreItemModel.thumbnail.path,
                    extension: coreItemModel.thumbnail.extension,
                    screenUri: ScreenUri(
                      charactersUri: '',
                      comicsUri: coreItemModel.comics.collectionURI,
                      creatorsUri: '',
                      eventsUri: coreItemModel.events.collectionURI,
                      seriesUri: coreItemModel.series.collectionURI,
                      storiesUri: coreItemModel.stories.collectionURI,
                    ),
                  ),
            )
            .toList();

        return CoreItemListModel(coreItemModels, total);
      } else {
        log("Failed http call."); // Perhaps handle it somehow
      }
    } catch (exception) {
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
