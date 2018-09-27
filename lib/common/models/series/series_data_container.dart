library series_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/series/series.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'series_data_container.g.dart';

abstract class SeriesDataContainer
    implements Built<SeriesDataContainer, SeriesDataContainerBuilder> {
  SeriesDataContainer._();

  factory SeriesDataContainer([updates(SeriesDataContainerBuilder b)]) =
      _$SeriesDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Series> get results;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(SeriesDataContainer.serializer, this));
  }

  static SeriesDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        SeriesDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<SeriesDataContainer> get serializer =>
      _$seriesDataContainerSerializer;
}
