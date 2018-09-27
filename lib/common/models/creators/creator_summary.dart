library creator_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'creator_summary.g.dart';

abstract class CreatorSummary
    implements Built<CreatorSummary, CreatorSummaryBuilder> {
  CreatorSummary._();

  factory CreatorSummary([updates(CreatorSummaryBuilder b)]) = _$CreatorSummary;

  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'role')
  String get role;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(CreatorSummary.serializer, this));
  }

  static CreatorSummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CreatorSummary.serializer, json.decode(jsonString));
  }

  static Serializer<CreatorSummary> get serializer =>
      _$creatorSummarySerializer;
}
