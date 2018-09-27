// GENERATED CODE - DO NOT MODIFY BY HAND

part of story_summary;

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

Serializer<StorySummary> _$storySummarySerializer =
    new _$StorySummarySerializer();

class _$StorySummarySerializer implements StructuredSerializer<StorySummary> {
  @override
  final Iterable<Type> types = const [StorySummary, _$StorySummary];
  @override
  final String wireName = 'StorySummary';

  @override
  Iterable serialize(Serializers serializers, StorySummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  StorySummary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StorySummaryBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StorySummary extends StorySummary {
  @override
  final String resourceURI;
  @override
  final String name;
  @override
  final String type;

  factory _$StorySummary([void updates(StorySummaryBuilder b)]) =>
      (new StorySummaryBuilder()..update(updates)).build();

  _$StorySummary._({this.resourceURI, this.name, this.type}) : super._() {
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('StorySummary', 'resourceURI');
    if (name == null)
      throw new BuiltValueNullFieldError('StorySummary', 'name');
    if (type == null)
      throw new BuiltValueNullFieldError('StorySummary', 'type');
  }

  @override
  StorySummary rebuild(void updates(StorySummaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StorySummaryBuilder toBuilder() => new StorySummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorySummary &&
        resourceURI == other.resourceURI &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, resourceURI.hashCode), name.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StorySummary')
          ..add('resourceURI', resourceURI)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class StorySummaryBuilder
    implements Builder<StorySummary, StorySummaryBuilder> {
  _$StorySummary _$v;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  StorySummaryBuilder();

  StorySummaryBuilder get _$this {
    if (_$v != null) {
      _resourceURI = _$v.resourceURI;
      _name = _$v.name;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorySummary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$StorySummary;
  }

  @override
  void update(void updates(StorySummaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StorySummary build() {
    final _$result = _$v ??
        new _$StorySummary._(resourceURI: resourceURI, name: name, type: type);
    replace(_$result);
    return _$result;
  }
}
