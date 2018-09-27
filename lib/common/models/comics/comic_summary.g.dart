// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic_summary;

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

Serializer<ComicSummary> _$comicSummarySerializer =
    new _$ComicSummarySerializer();

class _$ComicSummarySerializer implements StructuredSerializer<ComicSummary> {
  @override
  final Iterable<Type> types = const [ComicSummary, _$ComicSummary];
  @override
  final String wireName = 'ComicSummary';

  @override
  Iterable serialize(Serializers serializers, ComicSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ComicSummary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicSummaryBuilder();

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

class _$ComicSummary extends ComicSummary {
  @override
  final String resourceURI;
  @override
  final String name;

  factory _$ComicSummary([void updates(ComicSummaryBuilder b)]) =>
      (new ComicSummaryBuilder()..update(updates)).build();

  _$ComicSummary._({this.resourceURI, this.name}) : super._() {
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('ComicSummary', 'resourceURI');
    if (name == null)
      throw new BuiltValueNullFieldError('ComicSummary', 'name');
  }

  @override
  ComicSummary rebuild(void updates(ComicSummaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicSummaryBuilder toBuilder() => new ComicSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComicSummary &&
        resourceURI == other.resourceURI &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, resourceURI.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComicSummary')
          ..add('resourceURI', resourceURI)
          ..add('name', name))
        .toString();
  }
}

class ComicSummaryBuilder
    implements Builder<ComicSummary, ComicSummaryBuilder> {
  _$ComicSummary _$v;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ComicSummaryBuilder();

  ComicSummaryBuilder get _$this {
    if (_$v != null) {
      _resourceURI = _$v.resourceURI;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComicSummary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ComicSummary;
  }

  @override
  void update(void updates(ComicSummaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ComicSummary build() {
    final _$result =
        _$v ?? new _$ComicSummary._(resourceURI: resourceURI, name: name);
    replace(_$result);
    return _$result;
  }
}
