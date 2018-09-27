library comic_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/comics/comic_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_data_wrapper.g.dart';

abstract class ComicDataWrapper
    implements Built<ComicDataWrapper, ComicDataWrapperBuilder> {
  ComicDataWrapper._();

  factory ComicDataWrapper([updates(ComicDataWrapperBuilder b)]) =
      _$ComicDataWrapper;

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
  ComicDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(ComicDataWrapper.serializer, this));
  }

  static ComicDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<ComicDataWrapper> get serializer =>
      _$comicDataWrapperSerializer;
}
