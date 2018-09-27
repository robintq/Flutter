library series_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'series_summary.g.dart';

abstract class SeriesSummary
    implements Built<SeriesSummary, SeriesSummaryBuilder> {
  SeriesSummary._();

  factory SeriesSummary([updates(SeriesSummaryBuilder b)]) = _$SeriesSummary;

  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(SeriesSummary.serializer, this));
  }

  static SeriesSummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        SeriesSummary.serializer, json.decode(jsonString));
  }

  static Serializer<SeriesSummary> get serializer => _$seriesSummarySerializer;
}
