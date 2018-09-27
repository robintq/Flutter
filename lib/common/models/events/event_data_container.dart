library event_data_container;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/events/event.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'event_data_container.g.dart';

abstract class EventDataContainer
    implements Built<EventDataContainer, EventDataContainerBuilder> {
  EventDataContainer._();

  factory EventDataContainer([updates(EventDataContainerBuilder b)]) =
      _$EventDataContainer;

  @BuiltValueField(wireName: 'offset')
  int get offset;
  @BuiltValueField(wireName: 'limit')
  int get limit;
  @BuiltValueField(wireName: 'total')
  int get total;
  @BuiltValueField(wireName: 'count')
  int get count;
  @BuiltValueField(wireName: 'results')
  BuiltList<Event> get results;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(EventDataContainer.serializer, this));
  }

  static EventDataContainer fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        EventDataContainer.serializer, json.decode(jsonString));
  }

  static Serializer<EventDataContainer> get serializer =>
      _$eventDataContainerSerializer;
}
