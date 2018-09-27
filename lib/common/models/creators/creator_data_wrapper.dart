library creator_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/creators/creator_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'creator_data_wrapper.g.dart';

abstract class CreatorDataWrapper
    implements Built<CreatorDataWrapper, CreatorDataWrapperBuilder> {
  CreatorDataWrapper._();

  factory CreatorDataWrapper([updates(CreatorDataWrapperBuilder b)]) =
      _$CreatorDataWrapper;

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
  CreatorDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(CreatorDataWrapper.serializer, this));
  }

  static CreatorDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CreatorDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<CreatorDataWrapper> get serializer =>
      _$creatorDataWrapperSerializer;
}
