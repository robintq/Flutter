// GENERATED CODE - DO NOT MODIFY BY HAND

part of character_data_container;

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

Serializer<CharacterDataContainer> _$characterDataContainerSerializer =
    new _$CharacterDataContainerSerializer();

class _$CharacterDataContainerSerializer
    implements StructuredSerializer<CharacterDataContainer> {
  @override
  final Iterable<Type> types = const [
    CharacterDataContainer,
    _$CharacterDataContainer
  ];
  @override
  final String wireName = 'CharacterDataContainer';

  @override
  Iterable serialize(Serializers serializers, CharacterDataContainer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'offset',
      serializers.serialize(object.offset, specifiedType: const FullType(int)),
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Character)])),
    ];

    return result;
  }

  @override
  CharacterDataContainer deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterDataContainerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Character)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CharacterDataContainer extends CharacterDataContainer {
  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  @override
  final BuiltList<Character> results;

  factory _$CharacterDataContainer(
          [void updates(CharacterDataContainerBuilder b)]) =>
      (new CharacterDataContainerBuilder()..update(updates)).build();

  _$CharacterDataContainer._(
      {this.offset, this.limit, this.total, this.count, this.results})
      : super._() {
    if (offset == null)
      throw new BuiltValueNullFieldError('CharacterDataContainer', 'offset');
    if (limit == null)
      throw new BuiltValueNullFieldError('CharacterDataContainer', 'limit');
    if (total == null)
      throw new BuiltValueNullFieldError('CharacterDataContainer', 'total');
    if (count == null)
      throw new BuiltValueNullFieldError('CharacterDataContainer', 'count');
    if (results == null)
      throw new BuiltValueNullFieldError('CharacterDataContainer', 'results');
  }

  @override
  CharacterDataContainer rebuild(
          void updates(CharacterDataContainerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterDataContainerBuilder toBuilder() =>
      new CharacterDataContainerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterDataContainer &&
        offset == other.offset &&
        limit == other.limit &&
        total == other.total &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, offset.hashCode), limit.hashCode), total.hashCode),
            count.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CharacterDataContainer')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('total', total)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class CharacterDataContainerBuilder
    implements Builder<CharacterDataContainer, CharacterDataContainerBuilder> {
  _$CharacterDataContainer _$v;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  int _limit;
  int get limit => _$this._limit;
  set limit(int limit) => _$this._limit = limit;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  int _count;
  int get count => _$this._count;
  set count(int count) => _$this._count = count;

  ListBuilder<Character> _results;
  ListBuilder<Character> get results =>
      _$this._results ??= new ListBuilder<Character>();
  set results(ListBuilder<Character> results) => _$this._results = results;

  CharacterDataContainerBuilder();

  CharacterDataContainerBuilder get _$this {
    if (_$v != null) {
      _offset = _$v.offset;
      _limit = _$v.limit;
      _total = _$v.total;
      _count = _$v.count;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterDataContainer other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CharacterDataContainer;
  }

  @override
  void update(void updates(CharacterDataContainerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CharacterDataContainer build() {
    _$CharacterDataContainer _$result;
    try {
      _$result = _$v ??
          new _$CharacterDataContainer._(
              offset: offset,
              limit: limit,
              total: total,
              count: count,
              results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CharacterDataContainer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
