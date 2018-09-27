library series_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/series/series_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'series_data_wrapper.g.dart';

abstract class SeriesDataWrapper
    implements Built<SeriesDataWrapper, SeriesDataWrapperBuilder> {
  SeriesDataWrapper._();

  factory SeriesDataWrapper([updates(SeriesDataWrapperBuilder b)]) =
      _$SeriesDataWrapper;

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
  SeriesDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(SeriesDataWrapper.serializer, this));
  }

  static SeriesDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        SeriesDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<SeriesDataWrapper> get serializer =>
      _$seriesDataWrapperSerializer;
}
