// GENERATED CODE - DO NOT MODIFY BY HAND

part of creator_summary;

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

Serializer<CreatorSummary> _$creatorSummarySerializer =
    new _$CreatorSummarySerializer();

class _$CreatorSummarySerializer
    implements StructuredSerializer<CreatorSummary> {
  @override
  final Iterable<Type> types = const [CreatorSummary, _$CreatorSummary];
  @override
  final String wireName = 'CreatorSummary';

  @override
  Iterable serialize(Serializers serializers, CreatorSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CreatorSummary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorSummaryBuilder();

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
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatorSummary extends CreatorSummary {
  @override
  final String resourceURI;
  @override
  final String name;
  @override
  final String role;

  factory _$CreatorSummary([void updates(CreatorSummaryBuilder b)]) =>
      (new CreatorSummaryBuilder()..update(updates)).build();

  _$CreatorSummary._({this.resourceURI, this.name, this.role}) : super._() {
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('CreatorSummary', 'resourceURI');
    if (name == null)
      throw new BuiltValueNullFieldError('CreatorSummary', 'name');
    if (role == null)
      throw new BuiltValueNullFieldError('CreatorSummary', 'role');
  }

  @override
  CreatorSummary rebuild(void updates(CreatorSummaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorSummaryBuilder toBuilder() =>
      new CreatorSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatorSummary &&
        resourceURI == other.resourceURI &&
        name == other.name &&
        role == other.role;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, resourceURI.hashCode), name.hashCode), role.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatorSummary')
          ..add('resourceURI', resourceURI)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class CreatorSummaryBuilder
    implements Builder<CreatorSummary, CreatorSummaryBuilder> {
  _$CreatorSummary _$v;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  CreatorSummaryBuilder();

  CreatorSummaryBuilder get _$this {
    if (_$v != null) {
      _resourceURI = _$v.resourceURI;
      _name = _$v.name;
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatorSummary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CreatorSummary;
  }

  @override
  void update(void updates(CreatorSummaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatorSummary build() {
    final _$result = _$v ??
        new _$CreatorSummary._(
            resourceURI: resourceURI, name: name, role: role);
    replace(_$result);
    return _$result;
  }
}
