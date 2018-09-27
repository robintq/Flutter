library event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_list.dart';
import 'package:marvel/common/models/comics/comic_list.dart';
import 'package:marvel/common/models/creators/creator_list.dart';
import 'package:marvel/common/models/events/event_summary.dart';
import 'package:marvel/common/models/series/series_list.dart';
import 'package:marvel/common/models/shared/picture.dart';
import 'package:marvel/common/models/shared/url.dart';
import 'package:marvel/common/models/stories/story_list.dart';
import 'package:marvel/common/serializers/model_serializers.dart';
import 'package:marvel/core/models/core_item_model.dart';

part 'event.g.dart';

abstract class Event extends CoreItemModel
    implements Built<Event, EventBuilder> {
  Event._();

  factory Event([updates(EventBuilder b)]) = _$Event;

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
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'start')
  @nullable
  String get start;
  @BuiltValueField(wireName: 'end')
  @nullable
  String get end;
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
  @BuiltValueField(wireName: 'series')
  SeriesList get series;
  @BuiltValueField(wireName: 'next')
  @nullable
  EventSummary get next;
  @BuiltValueField(wireName: 'previous')
  @nullable
  EventSummary get previous;
  String toJson() {
    return json.encode(modelSerializers.serializeWith(Event.serializer, this));
  }

  static Event fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Event.serializer, json.decode(jsonString));
  }

  static Serializer<Event> get serializer => _$eventSerializer;
}
