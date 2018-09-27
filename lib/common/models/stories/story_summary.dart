library story_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'story_summary.g.dart';

abstract class StorySummary
    implements Built<StorySummary, StorySummaryBuilder> {
  StorySummary._();

  factory StorySummary([updates(StorySummaryBuilder b)]) = _$StorySummary;

  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'type')
  String get type;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(StorySummary.serializer, this));
  }

  static StorySummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        StorySummary.serializer, json.decode(jsonString));
  }

  static Serializer<StorySummary> get serializer => _$storySummarySerializer;
}
