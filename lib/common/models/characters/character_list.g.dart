// GENERATED CODE - DO NOT MODIFY BY HAND

part of character_list;

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

Serializer<CharacterList> _$characterListSerializer =
    new _$CharacterListSerializer();

class _$CharacterListSerializer implements StructuredSerializer<CharacterList> {
  @override
  final Iterable<Type> types = const [CharacterList, _$CharacterList];
  @override
  final String wireName = 'CharacterList';

  @override
  Iterable serialize(Serializers serializers, CharacterList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.available != null) {
      result
        ..add('available')
        ..add(serializers.serialize(object.available,
            specifiedType: const FullType(int)));
    }
    if (object.collectionURI != null) {
      result
        ..add('collectionURI')
        ..add(serializers.serialize(object.collectionURI,
            specifiedType: const FullType(String)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CharacterSummary)])));
    }
    if (object.returned != null) {
      result
        ..add('returned')
        ..add(serializers.serialize(object.returned,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  CharacterList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterListBuilder();

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
                      BuiltList, const [const FullType(CharacterSummary)]))
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

class _$CharacterList extends CharacterList {
  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final BuiltList<CharacterSummary> items;
  @override
  final int returned;

  factory _$CharacterList([void updates(CharacterListBuilder b)]) =>
      (new CharacterListBuilder()..update(updates)).build();

  _$CharacterList._(
      {this.available, this.collectionURI, this.items, this.returned})
      : super._();

  @override
  CharacterList rebuild(void updates(CharacterListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterListBuilder toBuilder() => new CharacterListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterList &&
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
    return (newBuiltValueToStringHelper('CharacterList')
          ..add('available', available)
          ..add('collectionURI', collectionURI)
          ..add('items', items)
          ..add('returned', returned))
        .toString();
  }
}

class CharacterListBuilder
    implements Builder<CharacterList, CharacterListBuilder> {
  _$CharacterList _$v;

  int _available;
  int get available => _$this._available;
  set available(int available) => _$this._available = available;

  String _collectionURI;
  String get collectionURI => _$this._collectionURI;
  set collectionURI(String collectionURI) =>
      _$this._collectionURI = collectionURI;

  ListBuilder<CharacterSummary> _items;
  ListBuilder<CharacterSummary> get items =>
      _$this._items ??= new ListBuilder<CharacterSummary>();
  set items(ListBuilder<CharacterSummary> items) => _$this._items = items;

  int _returned;
  int get returned => _$this._returned;
  set returned(int returned) => _$this._returned = returned;

  CharacterListBuilder();

  CharacterListBuilder get _$this {
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
  void replace(CharacterList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CharacterList;
  }

  @override
  void update(void updates(CharacterListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CharacterList build() {
    _$CharacterList _$result;
    try {
      _$result = _$v ??
          new _$CharacterList._(
              available: available,
              collectionURI: collectionURI,
              items: _items?.build(),
              returned: returned);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CharacterList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
