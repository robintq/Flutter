// GENERATED CODE - DO NOT MODIFY BY HAND

part of text_object;

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

Serializer<TextObject> _$textObjectSerializer = new _$TextObjectSerializer();

class _$TextObjectSerializer implements StructuredSerializer<TextObject> {
  @override
  final Iterable<Type> types = const [TextObject, _$TextObject];
  @override
  final String wireName = 'TextObject';

  @override
  Iterable serialize(Serializers serializers, TextObject object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  TextObject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new TextObjectBuilder().build();
  }
}

class _$TextObject extends TextObject {
  factory _$TextObject([void updates(TextObjectBuilder b)]) =>
      (new TextObjectBuilder()..update(updates)).build();

  _$TextObject._() : super._();

  @override
  TextObject rebuild(void updates(TextObjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TextObjectBuilder toBuilder() => new TextObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextObject;
  }

  @override
  int get hashCode {
    return 714370352;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('TextObject').toString();
  }
}

class TextObjectBuilder implements Builder<TextObject, TextObjectBuilder> {
  _$TextObject _$v;

  TextObjectBuilder();

  @override
  void replace(TextObject other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$TextObject;
  }

  @override
  void update(void updates(TextObjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TextObject build() {
    final _$result = _$v ?? new _$TextObject._();
    replace(_$result);
    return _$result;
  }
}
