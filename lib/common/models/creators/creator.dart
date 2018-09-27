library creator;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/comics/comic_list.dart';
import 'package:marvel/common/models/events/event_list.dart';
import 'package:marvel/common/models/series/series_list.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/models/shared/url.dart';
import 'package:marvel/common/models/stories/story_list.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/core/models/core_item_model.dart';

part 'creator.g.dart';

abstract class Creator extends CoreItemModel
    implements Built<Creator, CreatorBuilder> {
  Creator._();

  factory Creator([updates(CreatorBuilder b)]) = _$Creator;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'firstName')
  String get firstName;
  @BuiltValueField(wireName: 'middleName')
  String get middleName;
  @BuiltValueField(wireName: 'lastName')
  String get lastName;
  @BuiltValueField(wireName: 'suffix')
  String get suffix;
  @BuiltValueField(wireName: 'fullName')
  String get fullName;
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'thumbnail')
  Picture get thumbnail;
  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'comics')
  ComicList get comics;
  @BuiltValueField(wireName: 'series')
  SeriesList get series;
  @BuiltValueField(wireName: 'stories')
  StoryList get stories;
  @BuiltValueField(wireName: 'events')
  EventList get events;
  @BuiltValueField(wireName: 'urls')
  BuiltList<Url> get urls;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(Creator.serializer, this));
  }

  static Creator fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Creator.serializer, json.decode(jsonString));
  }

  static Serializer<Creator> get serializer => _$creatorSerializer;
}
