library story_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/stories/story_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'story_data_wrapper.g.dart';

abstract class StoryDataWrapper
    implements Built<StoryDataWrapper, StoryDataWrapperBuilder> {
  StoryDataWrapper._();

  factory StoryDataWrapper([updates(StoryDataWrapperBuilder b)]) =
      _$StoryDataWrapper;

  @BuiltValueField(wireName: 'code')
  int get code;
  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'copyright')
  String get copyright;
  @BuiltValueField(wireName: 'attributionText')
  String get attributionText;
  @BuiltValueField(wireName: 'attributionHTML')
  String get attributionHTML;
  @BuiltValueField(wireName: 'etag')
  String get etag;
  @BuiltValueField(wireName: 'data')
  StoryDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(StoryDataWrapper.serializer, this));
  }

  static StoryDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        StoryDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<StoryDataWrapper> get serializer =>
      _$storyDataWrapperSerializer;
}
