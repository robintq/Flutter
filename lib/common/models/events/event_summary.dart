library event_summary;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/common/serializers/model_serializers.dart';

part 'event_summary.g.dart';

abstract class EventSummary
    implements Built<EventSummary, EventSummaryBuilder> {
  EventSummary._();

  factory EventSummary([updates(EventSummaryBuilder b)]) = _$EventSummary;

  @BuiltValueField(wireName: 'resourceURI')
  @nullable
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  @nullable
  String get name;
  String toJson() {
    return json
        .encode(modelSerializers.serializeWith(EventSummary.serializer, this));
  }

  static EventSummary fromJson(String jsonString) {
    return modelSerializers.deserializeWith(
        EventSummary.serializer, json.decode(jsonString));
  }

  static Serializer<EventSummary> get serializer => _$eventSummarySerializer;
}
