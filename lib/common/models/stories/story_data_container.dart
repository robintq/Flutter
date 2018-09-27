library story_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/stories/story.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'story_data_container.g.dart';

abstract class StoryDataContainer
    implements Built<StoryDataContainer, StoryDataContainerBuilder> {
  StoryDataContainer._();

  factory StoryDataContainer([updates(StoryDataContainerBuilder b)]) =
      _$StoryDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Story> get results;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(StoryDataContainer.serializer, this));
  }

  static StoryDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        StoryDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<StoryDataContainer> get serializer =>
      _$storyDataContainerSerializer;
}
