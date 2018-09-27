// GENERATED CODE - DO NOT MODIFY BY HAND

part of creator_list;

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

Serializer<CreatorList> _$creatorListSerializer = new _$CreatorListSerializer();

class _$CreatorListSerializer implements StructuredSerializer<CreatorList> {
  @override
  final Iterable<Type> types = const [CreatorList, _$CreatorList];
  @override
  final String wireName = 'CreatorList';

  @override
  Iterable serialize(Serializers serializers, CreatorList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'available',
      serializers.serialize(object.available,
          specifiedType: const FullType(int)),
      'collectionURI',
      serializers.serialize(object.collectionURI,
          specifiedType: const FullType(String)),
      'CreatorSummary',
      serializers.serialize(object.creatorSummary,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CreatorSummary)])),
      'returned',
      serializers.serialize(object.returned,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CreatorList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorListBuilder();

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
        case 'CreatorSummary':
          result.creatorSummary.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CreatorSummary)]))
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

class _$CreatorList extends CreatorList {
  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final BuiltList<CreatorSummary> creatorSummary;
  @override
  final int returned;

  factory _$CreatorList([void updates(CreatorListBuilder b)]) =>
      (new CreatorListBuilder()..update(updates)).build();

  _$CreatorList._(
      {this.available, this.collectionURI, this.creatorSummary, this.returned})
      : super._() {
    if (available == null)
      throw new BuiltValueNullFieldError('CreatorList', 'available');
    if (collectionURI == null)
      throw new BuiltValueNullFieldError('CreatorList', 'collectionURI');
    if (creatorSummary == null)
      throw new BuiltValueNullFieldError('CreatorList', 'creatorSummary');
    if (returned == null)
      throw new BuiltValueNullFieldError('CreatorList', 'returned');
  }

  @override
  CreatorList rebuild(void updates(CreatorListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorListBuilder toBuilder() => new CreatorListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatorList &&
        available == other.available &&
        collectionURI == other.collectionURI &&
        creatorSummary == other.creatorSummary &&
        returned == other.returned;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, available.hashCode), collectionURI.hashCode),
            creatorSummary.hashCode),
        returned.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatorList')
          ..add('available', available)
          ..add('collectionURI', collectionURI)
          ..add('creatorSummary', creatorSummary)
          ..add('returned', returned))
        .toString();
  }
}

class CreatorListBuilder implements Builder<CreatorList, CreatorListBuilder> {
  _$CreatorList _$v;

  int _available;
  int get available => _$this._available;
  set available(int available) => _$this._available = available;

  String _collectionURI;
  String get collectionURI => _$this._collectionURI;
  set collectionURI(String collectionURI) =>
      _$this._collectionURI = collectionURI;

  ListBuilder<CreatorSummary> _creatorSummary;
  ListBuilder<CreatorSummary> get creatorSummary =>
      _$this._creatorSummary ??= new ListBuilder<CreatorSummary>();
  set creatorSummary(ListBuilder<CreatorSummary> creatorSummary) =>
      _$this._creatorSummary = creatorSummary;

  int _returned;
  int get returned => _$this._returned;
  set returned(int returned) => _$this._returned = returned;

  CreatorListBuilder();

  CreatorListBuilder get _$this {
    if (_$v != null) {
      _available = _$v.available;
      _collectionURI = _$v.collectionURI;
      _creatorSummary = _$v.creatorSummary?.toBuilder();
      _returned = _$v.returned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatorList other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CreatorList;
  }

  @override
  void update(void updates(CreatorListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatorList build() {
    _$CreatorList _$result;
    try {
      _$result = _$v ??
          new _$CreatorList._(
              available: available,
              collectionURI: collectionURI,
              creatorSummary: creatorSummary.build(),
              returned: returned);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creatorSummary';
        creatorSummary.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreatorList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
