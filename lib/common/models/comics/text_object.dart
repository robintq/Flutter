library text_object;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'text_object.g.dart';

abstract class TextObject implements Built<TextObject, TextObjectBuilder> {
  TextObject._();

  factory TextObject([updates(TextObjectBuilder b)]) = _$TextObject;

  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(TextObject.serializer, this));
  }

  static TextObject fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        TextObject.serializer, json.decode(jsonString));
  }

  static Serializer<TextObject> get serializer => _$textObjectSerializer;
}
