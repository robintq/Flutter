// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic_list;

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

Serializer<ComicList> _$comicListSerializer = new _$ComicListSerializer();

class _$ComicListSerializer implements StructuredSerializer<ComicList> {
  @override
  final Iterable<Type> types = const [ComicList, _$ComicList];
  @override
  final String wireName = 'ComicList';

  @override
  Iterable serialize(Serializers serializers, ComicList object,
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
              const FullType(BuiltList, const [const FullType(ComicSummary)])),
      'returned',
      serializers.serialize(object.returned,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ComicList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicListBuilder();

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
                      BuiltList, const [const FullType(ComicSummary)]))
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

class _$ComicList extends ComicList {
  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final BuiltList<ComicSummary> items;
  @override
  final int returned;

  factory _$ComicList([void updates(ComicListBuilder b)]) =>
      (new ComicListBuilder()..update(updates)).build();

  _$ComicList._({this.available, this.collectionURI, this.items, this.returned})
      : super._() {
    if (available == null)
      throw new BuiltValueNullFieldError('ComicList', 'available');
    if (collectionURI == null)
      throw new BuiltValueNullFieldError('ComicList', 'collectionURI');
    if (items == null) throw new BuiltValueNullFieldError('ComicList', 'items');
    if (returned == null)
      throw new BuiltValueNullFieldError('ComicList', 'returned');
  }

  @override
  ComicList rebuild(void updates(ComicListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicListBuilder toBuilder() => new ComicListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComicList &&
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
    return (newBuiltValueToStringHelper('ComicList')
          ..add('available', available)
          ..add('collectionURI', collectionURI)
          ..add('items', items)
          ..add('returned', returned))
        .toString();
  }
}

class ComicListBuilder implements Builder<ComicList, ComicListBuilder> {
  _$ComicList _$v;

  int _available;
  int get available => _$this._available;
  set available(int available) => _$this._available = available;

  String _collectionURI;
  String get collectionURI => _$this._collectionURI;
  set collectionURI(String collectionURI) =>
      _$this._collectionURI = collectionURI;

  ListBuilder<ComicSummary> _items;
  ListBuilder<ComicSummary> get items =>
      _$this._items ??= new ListBuilder<ComicSummary>();
  set items(ListBuilder<ComicSummary> items) => _$this._items = items;

  int _returned;
  int get returned => _$this._returned;
  set returned(int returned) => _$this._returned = returned;

  ComicListBuilder();

  ComicListBuilder get _$this {
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
  void replace(ComicList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ComicList;
  }

  @override
  void update(void updates(ComicListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ComicList build() {
    _$ComicList _$result;
    try {
      _$result = _$v ??
          new _$ComicList._(
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
            'ComicList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
