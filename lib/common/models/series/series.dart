library series;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_list.dart';
import 'package:marvel/common/models/comics/comic_list.dart';
import 'package:marvel/common/models/creators/creator_list.dart';
import 'package:marvel/common/models/events/event_list.dart';
import 'package:marvel/common/models/series/series_summary.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/models/shared/url.dart';
import 'package:marvel/common/models/stories/story_list.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/core/models/core_item_model.dart';

part 'series.g.dart';

abstract class Series extends CoreItemModel
    implements Built<Series, SeriesBuilder> {
  Series._();

  factory Series([updates(SeriesBuilder b)]) = _$Series;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'urls')
  BuiltList<Url> get urls;
  @BuiltValueField(wireName: 'startYear')
  int get startYear;
  @BuiltValueField(wireName: 'endYear')
  int get endYear;
  @BuiltValueField(wireName: 'rating')
  String get rating;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'thumbnail')
  Picture get thumbnail;
  @BuiltValueField(wireName: 'creators')
  CreatorList get creators;
  @BuiltValueField(wireName: 'characters')
  CharacterList get characters;
  @BuiltValueField(wireName: 'stories')
  StoryList get stories;
  @BuiltValueField(wireName: 'comics')
  ComicList get comics;
  @BuiltValueField(wireName: 'events')
  EventList get events;
  @BuiltValueField(wireName: 'next')
  @nullable
  SeriesSummary get next;
  @BuiltValueField(wireName: 'previous')
  @nullable
  SeriesSummary get previous;
  String toJson() {
    return json.encode(modelSerializers.serializeWith(Series.serializer, this));
  }

  static Series fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Series.serializer, json.decode(jsonString));
  }

  static Serializer<Series> get serializer => _$seriesSerializer;
}
