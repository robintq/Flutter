library character;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/comics/comic_list.dart';
import 'package:marvel/common/models/events/event_list.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/models/series/series_list.dart';
import 'package:marvel/common/models/stories/story_list.dart';
import 'package:marvel/common/models/shared/url.dart';
import 'package:marvel/core/models/core_item_model.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'character.g.dart';

abstract class Character extends CoreItemModel
    implements Built<Character, CharacterBuilder> {
  Character._();

  factory Character([updates(CharacterBuilder b)]) = _$Character;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
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
        .encode(modelSerializers.serializeWith(Character.serializer, this));
  }

  static Character fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Character.serializer, json.decode(jsonString));
  }

  static Serializer<Character> get serializer => _$characterSerializer;
}
