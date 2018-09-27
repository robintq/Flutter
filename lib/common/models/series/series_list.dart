library series_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/series/series_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'series_list.g.dart';

abstract class SeriesList implements Built<SeriesList, SeriesListBuilder> {
  SeriesList._();

  factory SeriesList([updates(SeriesListBuilder b)]) = _$SeriesList;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<SeriesSummary> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(SeriesList.serializer, this));
  }

  static SeriesList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        SeriesList.serializer, json.decode(jsonString));
  }

  static Serializer<SeriesList> get serializer => _$seriesListSerializer;
}
