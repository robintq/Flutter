library picture;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'picture.g.dart';

abstract class Picture implements Built<Picture, PictureBuilder> {
  Picture._();

  factory Picture([updates(PictureBuilder b)]) = _$Picture;

  @BuiltValueField(wireName: 'path')
  String get path;
  @BuiltValueField(wireName: 'extension')
  String get extension;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(Picture.serializer, this));
  }

  static Picture fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        Picture.serializer, json.decode(jsonString));
  }

  static Serializer<Picture> get serializer => _$pictureSerializer;
}
