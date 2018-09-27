library comic_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/comics/comic_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_list.g.dart';

abstract class ComicList implements Built<ComicList, ComicListBuilder> {
  ComicList._();

  factory ComicList([updates(ComicListBuilder b)]) = _$ComicList;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<ComicSummary> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(ComicList.serializer, this));
  }

  static ComicList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicList.serializer, json.decode(jsonString));
  }

  static Serializer<ComicList> get serializer => _$comicListSerializer;
}
