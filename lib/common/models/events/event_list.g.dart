// GENERATED CODE - DO NOT MODIFY BY HAND

part of event_list;

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

Serializer<EventList> _$eventListSerializer = new _$EventListSerializer();

class _$EventListSerializer implements StructuredSerializer<EventList> {
  @override
  final Iterable<Type> types = const [EventList, _$EventList];
  @override
  final String wireName = 'EventList';

  @override
  Iterable serialize(Serializers serializers, EventList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'available',
      serializers.serialize(object.available,
          specifiedType: const FullType(int)),
      'collectionURI',
      serializers.serialize(object.collectionURI,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(EventSummary)])),
      'returned',
      serializers.serialize(object.returned,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  EventList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'collectionURI':
          result.collectionURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(EventSummary)]))
              as BuiltList);
          break;
        case 'returned':
          result.returned = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$EventList extends EventList {
  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final BuiltList<EventSummary> items;
  @override
  final int returned;

  factory _$EventList([void updates(EventListBuilder b)]) =>
      (new EventListBuilder()..update(updates)).build();

  _$EventList._({this.available, this.collectionURI, this.items, this.returned})
      : super._() {
    if (available == null)
      throw new BuiltValueNullFieldError('EventList', 'available');
    if (collectionURI == null)
      throw new BuiltValueNullFieldError('EventList', 'collectionURI');
    if (items == null) throw new BuiltValueNullFieldError('EventList', 'items');
    if (returned == null)
      throw new BuiltValueNullFieldError('EventList', 'returned');
  }

  @override
  EventList rebuild(void updates(EventListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventListBuilder toBuilder() => new EventListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventList &&
        available == other.available &&
        collectionURI == other.collectionURI &&
        items == other.items &&
        returned == other.returned;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, available.hashCode), collectionURI.hashCode),
            items.hashCode),
        returned.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventList')
          ..add('available', available)
          ..add('collectionURI', collectionURI)
          ..add('items', items)
          ..add('returned', returned))
        .toString();
  }
}

class EventListBuilder implements Builder<EventList, EventListBuilder> {
  _$EventList _$v;

  int _available;
  int get available => _$this._available;
  set available(int available) => _$this._available = available;

  String _collectionURI;
  String get collectionURI => _$this._collectionURI;
  set collectionURI(String collectionURI) =>
      _$this._collectionURI = collectionURI;

  ListBuilder<EventSummary> _items;
  ListBuilder<EventSummary> get items =>
      _$this._items ??= new ListBuilder<EventSummary>();
  set items(ListBuilder<EventSummary> items) => _$this._items = items;

  int _returned;
  int get returned => _$this._returned;
  set returned(int returned) => _$this._returned = returned;

  EventListBuilder();

  EventListBuilder get _$this {
    if (_$v != null) {
      _available = _$v.available;
      _collectionURI = _$v.collectionURI;
      _items = _$v.items?.toBuilder();
      _returned = _$v.returned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EventList;
  }

  @override
  void update(void updates(EventListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EventList build() {
    _$EventList _$result;
    try {
      _$result = _$v ??
          new _$EventList._(
              available: available,
              collectionURI: collectionURI,
              items: items.build(),
              returned: returned);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
