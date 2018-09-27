library comic;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_list.dart';
import 'package:marvel/common/models/comics/comic_summary.dart';
import 'package:marvel/common/models/events/event_list.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/models/series/series_summary.dart';
import 'package:marvel/common/models/stories/story_list.dart';
import 'package:marvel/common/models/shared/url.dart';
import 'package:marvel/common/models/comics/comic_date.dart';
import 'package:marvel/common/models/comics/comic_price.dart';
import 'package:marvel/common/models/comics/text_object.dart';
import 'package:marvel/common/models/creators/creator_list.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/core/models/core_item_model.dart';

part 'comic.g.dart';

abstract class Comic extends CoreItemModel
    implements Built<Comic, ComicBuilder> {
  Comic._();

  factory Comic([updates(ComicBuilder b)]) = _$Comic;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'digitalId')
  int get digitalId;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'issueNumber')
  double get issueNumber;
  @BuiltValueField(wireName: 'variantDescription')
  String get variantDescription;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'isbn')
  String get isbn;
  @BuiltValueField(wireName: 'upc')
  String get upc;
  @BuiltValueField(wireName: 'diamondCode')
  String get diamondCode;
  @BuiltValueField(wireName: 'ean')
  String get ean;
  @BuiltValueField(wireName: 'issn')
  String get issn;
  @BuiltValueField(wireName: 'format')
  String get format;
  @BuiltValueField(wireName: 'pageCount')
  int get pageCount;
  @BuiltValueField(wireName: 'textObjects')
  BuiltList<TextObject> get textObjects;
  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'urls')
  BuiltList<Url> get urls;
  @BuiltValueField(wireName: 'series')
  SeriesSummary get series;
  @BuiltValueField(wireName: 'variants')
  BuiltList<ComicSummary> get variants;
  @BuiltValueField(wireName: 'collections')
  BuiltList<ComicSummary> get collections;
  @BuiltValueField(wireName: 'collectedIssues')
  BuiltList<ComicSummary> get collectedIssues;
  @BuiltValueField(wireName: 'dates')
  BuiltList<ComicDate> get dates;
  @BuiltValueField(wireName: 'prices')
  BuiltList<ComicPrice> get prices;
  @BuiltValueField(wireName: 'thumbnail')
  Picture get thumbnail;
  @BuiltValueField(wireName: 'images')
  BuiltList<Picture> get images;
  @BuiltValueField(wireName: 'creators')
  CreatorList get creators;
  @BuiltValueField(wireName: 'characters')
  @nullable
  CharacterList get characters;
  @BuiltValueField(wireName: 'stories')
  StoryList get stories;
  @BuiltValueField(wireName: 'events')
  EventList get events;
  String toJson() {
    return json.encode(modelSerializers.serializeWith(Comic.serializer, this));
  }

  static Comic fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Comic.serializer, json.decode(jsonString));
  }

  static Serializer<Comic> get serializer => _$comicSerializer;
}
