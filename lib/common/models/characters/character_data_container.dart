library character_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'character_data_container.g.dart';

abstract class CharacterDataContainer
    implements Built<CharacterDataContainer, CharacterDataContainerBuilder> {
  CharacterDataContainer._();

  factory CharacterDataContainer([updates(CharacterDataContainerBuilder b)]) =
      _$CharacterDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Character> get results;
  String toJson() {
    return json.encode(modelSerializers.serializeWith(
        CharacterDataContainer.serializer, this));
  }

  static CharacterDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CharacterDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterDataContainer> get serializer =>
      _$characterDataContainerSerializer;
}
