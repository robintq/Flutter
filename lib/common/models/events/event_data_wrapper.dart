library event_data_wrapper;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/models/events/event_data_container.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'event_data_wrapper.g.dart';

abstract class EventDataWrapper
    implements Built<EventDataWrapper, EventDataWrapperBuilder> {
  EventDataWrapper._();

  factory EventDataWrapper([updates(EventDataWrapperBuilder b)]) =
      _$EventDataWrapper;

  @BuiltValueField(wireName: 'code')
  int get code;
  @BuiltValueField(wireName: 'status')
  String get status;
  @BuiltValueField(wireName: 'copyright')
  String get copyright;
  @BuiltValueField(wireName: 'attributionText')
  String get attributionText;
  @BuiltValueField(wireName: 'attributionHTML')
  String get attributionHTML;
  @BuiltValueField(wireName: 'etag')
  String get etag;
  @BuiltValueField(wireName: 'data')
  EventDataContainer get data;
  String toJson() {
    return json.encode(
        modelSerializers.serializeWith(EventDataWrapper.serializer, this));
  }

  static EventDataWrapper fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        EventDataWrapper.serializer, json.decode(jsonString));
  }

  static Serializer<EventDataWrapper> get serializer =>
      _$eventDataWrapperSerializer;
}
