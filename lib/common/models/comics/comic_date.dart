library comic_date;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_date.g.dart';

abstract class ComicDate implements Built<ComicDate, ComicDateBuilder> {
  ComicDate._();

  factory ComicDate([updates(ComicDateBuilder b)]) = _$ComicDate;

  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'date')
  String get date;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(ComicDate.serializer, this));
  }

  static ComicDate fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicDate.serializer, json.decode(jsonString));
  }

  static Serializer<ComicDate> get serializer => _$comicDateSerializer;
}
