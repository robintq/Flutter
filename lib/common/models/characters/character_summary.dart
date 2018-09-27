library character_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'character_summary.g.dart';

abstract class CharacterSummary
    implements Built<CharacterSummary, CharacterSummaryBuilder> {
  CharacterSummary._();

  factory CharacterSummary([updates(CharacterSummaryBuilder b)]) =
      _$CharacterSummary;

  @BuiltValueField(wireName: 'resourceURI')
  @nullable
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;
  @BuiltValueField(wireName: 'role')
  @nullable
  String get role;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(CharacterSummary.serializer, this));
  }

  static CharacterSummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CharacterSummary.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterSummary> get serializer =>
      _$characterSummarySerializer;
}
