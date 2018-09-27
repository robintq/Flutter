library creator_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/creators/creator_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'creator_list.g.dart';

abstract class CreatorList implements Built<CreatorList, CreatorListBuilder> {
  CreatorList._();

  factory CreatorList([updates(CreatorListBuilder b)]) = _$CreatorList;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'CreatorSummary')
  BuiltList<CreatorSummary> get creatorSummary;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(CreatorList.serializer, this));
  }

  static CreatorList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CreatorList.serializer, json.decode(jsonString));
  }

  static Serializer<CreatorList> get serializer => _$creatorListSerializer;
}
