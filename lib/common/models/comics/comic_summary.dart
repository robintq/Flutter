library comic_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_summary.g.dart';

abstract class ComicSummary
    implements Built<ComicSummary, ComicSummaryBuilder> {
  ComicSummary._();

  factory ComicSummary([updates(ComicSummaryBuilder b)]) = _$ComicSummary;

  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(ComicSummary.serializer, this));
  }

  static ComicSummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicSummary.serializer, json.decode(jsonString));
  }

  static Serializer<ComicSummary> get serializer => _$comicSummarySerializer;
}
