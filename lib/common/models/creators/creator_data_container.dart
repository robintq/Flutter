library creator_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/creators/creator.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'creator_data_container.g.dart';

abstract class CreatorDataContainer
    implements Built<CreatorDataContainer, CreatorDataContainerBuilder> {
  CreatorDataContainer._();

  factory CreatorDataContainer([updates(CreatorDataContainerBuilder b)]) =
      _$CreatorDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Creator> get results;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(CreatorDataContainer.serializer, this));
  }

  static CreatorDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CreatorDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<CreatorDataContainer> get serializer =>
      _$creatorDataContainerSerializer;
}
