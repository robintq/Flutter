library comic_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/comics/comic.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_data_container.g.dart';

abstract class ComicDataContainer
    implements Built<ComicDataContainer, ComicDataContainerBuilder> {
  ComicDataContainer._();

  factory ComicDataContainer([updates(ComicDataContainerBuilder b)]) =
      _$ComicDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Comic> get results;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(ComicDataContainer.serializer, this));
  }

  static ComicDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<ComicDataContainer> get serializer =>
      _$comicDataContainerSerializer;
}
