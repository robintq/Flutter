library character_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'character_data_wrapper.g.dart';

abstract class CharacterDataWrapper
    implements Built<CharacterDataWrapper, CharacterDataWrapperBuilder> {
  CharacterDataWrapper._();

  factory CharacterDataWrapper([updates(CharacterDataWrapperBuilder b)]) =
      _$CharacterDataWrapper;

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
  CharacterDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(CharacterDataWrapper.serializer, this));
  }

  static CharacterDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CharacterDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterDataWrapper> get serializer =>
      _$characterDataWrapperSerializer;
}
