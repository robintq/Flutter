library event_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/events/event_summary.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'event_list.g.dart';

abstract class EventList implements Built<EventList, EventListBuilder> {
  EventList._();

  factory EventList([updates(EventListBuilder b)]) = _$EventList;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<EventSummary> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(EventList.serializer, this));
  }

  static EventList fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        EventList.serializer, json.decode(jsonString));
  }

  static Serializer<EventList> get serializer => _$eventListSerializer;
}
