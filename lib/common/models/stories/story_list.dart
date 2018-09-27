library story_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/stories/story_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'story_list.g.dart';

abstract class StoryList implements Built<StoryList, StoryListBuilder> {
  StoryList._();

  factory StoryList([updates(StoryListBuilder b)]) = _$StoryList;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<StorySummary> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(StoryList.serializer, this));
  }

  static StoryList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        StoryList.serializer, json.decode(jsonString));
  }

  static Serializer<StoryList> get serializer => _$storyListSerializer;
}
