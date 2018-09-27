library story;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_list.dart';
import 'package:marvel/common/models/comics/comic_list.dart';
import 'package:marvel/common/models/comics/comic_summary.dart';
import 'package:marvel/common/models/creators/creator_list.dart';
import 'package:marvel/common/models/events/event_list.dart';
import 'package:marvel/common/models/series/series_list.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/core/models/core_item_model.dart';

part 'story.g.dart';

abstract class Story extends CoreItemModel
    implements Built<Story, StoryBuilder> {
  Story._();

  factory Story([updates(StoryBuilder b)]) = _$Story;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'description')
  @nullable
  String get description;
  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'thumbnail')
  @nullable
  Picture get thumbnail;
  @BuiltValueField(wireName: 'creators')
  CreatorList get creators;
  @BuiltValueField(wireName: 'characters')
  CharacterList get characters;
  @BuiltValueField(wireName: 'series')
  SeriesList get series;
  @BuiltValueField(wireName: 'comics')
  ComicList get comics;
  @BuiltValueField(wireName: 'events')
  EventList get events;
  @BuiltValueField(wireName: 'originalIssue')
  ComicSummary get originalIssue;
  String toJson() {
    return json.encode(modelSerializers.serializeWith(Story.serializer, this));
  }

  static Story fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Story.serializer, json.decode(jsonString));
  }

  static Serializer<Story> get serializer => _$storySerializer;
}
