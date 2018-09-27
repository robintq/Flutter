library character_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/characters/character_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'character_list.g.dart';

abstract class CharacterList
    implements Built<CharacterList, CharacterListBuilder> {
  CharacterList._();

  factory CharacterList([updates(CharacterListBuilder b)]) = _$CharacterList;

  @BuiltValueField(wireName: 'available')
  @nullable
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  @nullable
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  @nullable
  BuiltList<CharacterSummary> get items;
  @BuiltValueField(wireName: 'returned')
  @nullable
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(CharacterList.serializer, this));
  }

  static CharacterList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        CharacterList.serializer, json.decode(jsonString));
  }

  static Serializer<CharacterList> get serializer => _$characterListSerializer;
}
