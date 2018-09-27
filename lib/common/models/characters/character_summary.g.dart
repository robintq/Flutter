// GENERATED CODE - DO NOT MODIFY BY HAND

part of character_summary;

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

Serializer<CharacterSummary> _$characterSummarySerializer =
    new _$CharacterSummarySerializer();

class _$CharacterSummarySerializer
    implements StructuredSerializer<CharacterSummary> {
  @override
  final Iterable<Type> types = const [CharacterSummary, _$CharacterSummary];
  @override
  final String wireName = 'CharacterSummary';

  @override
  Iterable serialize(Serializers serializers, CharacterSummary object,
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
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CharacterSummary deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterSummaryBuilder();

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

class _$CharacterSummary extends CharacterSummary {
  @override
  final String resourceURI;
  @override
  final String name;
  @override
  final String role;

  factory _$CharacterSummary([void updates(CharacterSummaryBuilder b)]) =>
      (new CharacterSummaryBuilder()..update(updates)).build();

  _$CharacterSummary._({this.resourceURI, this.name, this.role}) : super._();

  @override
  CharacterSummary rebuild(void updates(CharacterSummaryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterSummaryBuilder toBuilder() =>
      new CharacterSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CharacterSummary &&
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
    return (newBuiltValueToStringHelper('CharacterSummary')
          ..add('resourceURI', resourceURI)
          ..add('name', name)
          ..add('role', role))
        .toString();
  }
}

class CharacterSummaryBuilder
    implements Builder<CharacterSummary, CharacterSummaryBuilder> {
  _$CharacterSummary _$v;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  CharacterSummaryBuilder();

  CharacterSummaryBuilder get _$this {
    if (_$v != null) {
      _resourceURI = _$v.resourceURI;
      _name = _$v.name;
      _role = _$v.role;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CharacterSummary other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CharacterSummary;
  }

  @override
  void update(void updates(CharacterSummaryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CharacterSummary build() {
    final _$result = _$v ??
        new _$CharacterSummary._(
            resourceURI: resourceURI, name: name, role: role);
    replace(_$result);
    return _$result;
  }
}
