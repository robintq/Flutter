// GENERATED CODE - DO NOT MODIFY BY HAND

part of event_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new

Serializer<EventSummary> _$eventSummarySerializer =
    new _$EventSummarySerializer();

class _$EventSummarySerializer implements StructuredSerializer<EventSummary> {
  @override
  final Iterable<Type> types = const [EventSummary, _$EventSummary];
  @override
  final String wireName = 'EventSummary';

  @override
  Iterable serialize(Serializers serializers, EventSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.resourceURI != null) {
      result
        ..add('resourceURI')
        ..add(serializers.serialize(object.resourceURI,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  EventSummary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventSummaryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'resourceURI':
          result.resourceURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EventSummary extends EventSummary {
  @override
  final String resourceURI;
  @override
  final String name;

  factory _$EventSummary([void updates(EventSummaryBuilder b)]) =>
      (new EventSummaryBuilder()..update(updates)).build();

  _$EventSummary._({this.resourceURI, this.name}) : super._();

  @override
  EventSummary rebuild(void updates(EventSummaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventSummaryBuilder toBuilder() => new EventSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventSummary &&
        resourceURI == other.resourceURI &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceURI.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventSummary')
          ..add('resourceURI', resourceURI)
          ..add('name', name))
        .toString();
  }
}

class EventSummaryBuilder
    implements Builder<EventSummary, EventSummaryBuilder> {
  _$EventSummary _$v;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  EventSummaryBuilder();

  EventSummaryBuilder get _$this {
    if (_$v != null) {
      _resourceURI = _$v.resourceURI;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventSummary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EventSummary;
  }

  @override
  void update(void updates(EventSummaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EventSummary build() {
    final _$result =
        _$v ?? new _$EventSummary._(resourceURI: resourceURI, name: name);
    replace(_$result);
    return _$result;
  }
}
