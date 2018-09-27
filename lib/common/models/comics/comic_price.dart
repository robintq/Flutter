library comic_price;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'comic_price.g.dart';

abstract class ComicPrice implements Built<ComicPrice, ComicPriceBuilder> {
  ComicPrice._();

  factory ComicPrice([updates(ComicPriceBuilder b)]) = _$ComicPrice;

  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'price')
  double get price;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(ComicPrice.serializer, this));
  }

  static ComicPrice fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        ComicPrice.serializer, json.decode(jsonString));
  }

  static Serializer<ComicPrice> get serializer => _$comicPriceSerializer;
}
