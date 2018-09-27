// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic_data_container;

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

Serializer<ComicDataContainer> _$comicDataContainerSerializer =
    new _$ComicDataContainerSerializer();

class _$ComicDataContainerSerializer
    implements StructuredSerializer<ComicDataContainer> {
  @override
  final Iterable<Type> types = const [ComicDataContainer, _$ComicDataContainer];
  @override
  final String wireName = 'ComicDataContainer';

  @override
  Iterable serialize(Serializers serializers, ComicDataContainer object,
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
              const FullType(BuiltList, const [const FullType(Comic)])),
    ];

    return result;
  }

  @override
  ComicDataContainer deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicDataContainerBuilder();

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
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Comic)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ComicDataContainer extends ComicDataContainer {
  @override
  final int offset;
  @override
  final int limit;
  @override
  final int total;
  @override
  final int count;
  @override
  final BuiltList<Comic> results;

  factory _$ComicDataContainer([void updates(ComicDataContainerBuilder b)]) =>
      (new ComicDataContainerBuilder()..update(updates)).build();

  _$ComicDataContainer._(
      {this.offset, this.limit, this.total, this.count, this.results})
      : super._() {
    if (offset == null)
      throw new BuiltValueNullFieldError('ComicDataContainer', 'offset');
    if (limit == null)
      throw new BuiltValueNullFieldError('ComicDataContainer', 'limit');
    if (total == null)
      throw new BuiltValueNullFieldError('ComicDataContainer', 'total');
    if (count == null)
      throw new BuiltValueNullFieldError('ComicDataContainer', 'count');
    if (results == null)
      throw new BuiltValueNullFieldError('ComicDataContainer', 'results');
  }

  @override
  ComicDataContainer rebuild(void updates(ComicDataContainerBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicDataContainerBuilder toBuilder() =>
      new ComicDataContainerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComicDataContainer &&
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
    return (newBuiltValueToStringHelper('ComicDataContainer')
          ..add('offset', offset)
          ..add('limit', limit)
          ..add('total', total)
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class ComicDataContainerBuilder
    implements Builder<ComicDataContainer, ComicDataContainerBuilder> {
  _$ComicDataContainer _$v;

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

  ListBuilder<Comic> _results;
  ListBuilder<Comic> get results =>
      _$this._results ??= new ListBuilder<Comic>();
  set results(ListBuilder<Comic> results) => _$this._results = results;

  ComicDataContainerBuilder();

  ComicDataContainerBuilder get _$this {
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
  void replace(ComicDataContainer other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ComicDataContainer;
  }

  @override
  void update(void updates(ComicDataContainerBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ComicDataContainer build() {
    _$ComicDataContainer _$result;
    try {
      _$result = _$v ??
          new _$ComicDataContainer._(
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
            'ComicDataContainer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
