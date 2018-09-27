// GENERATED CODE - DO NOT MODIFY BY HAND

part of picture;

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

Serializer<Picture> _$pictureSerializer = new _$PictureSerializer();

class _$PictureSerializer implements StructuredSerializer<Picture> {
  @override
  final Iterable<Type> types = const [Picture, _$Picture];
  @override
  final String wireName = 'Picture';

  @override
  Iterable serialize(Serializers serializers, Picture object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'path',
      serializers.serialize(object.path, specifiedType: const FullType(String)),
      'extension',
      serializers.serialize(object.extension,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Picture deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PictureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extension':
          result.extension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Picture extends Picture {
  @override
  final String path;
  @override
  final String extension;

  factory _$Picture([void updates(PictureBuilder b)]) =>
      (new PictureBuilder()..update(updates)).build();

  _$Picture._({this.path, this.extension}) : super._() {
    if (path == null) throw new BuiltValueNullFieldError('Picture', 'path');
    if (extension == null)
      throw new BuiltValueNullFieldError('Picture', 'extension');
  }

  @override
  Picture rebuild(void updates(PictureBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureBuilder toBuilder() => new PictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Picture &&
        path == other.path &&
        extension == other.extension;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, path.hashCode), extension.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Picture')
          ..add('path', path)
          ..add('extension', extension))
        .toString();
  }
}

class PictureBuilder implements Builder<Picture, PictureBuilder> {
  _$Picture _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _extension;
  String get extension => _$this._extension;
  set extension(String extension) => _$this._extension = extension;

  PictureBuilder();

  PictureBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _extension = _$v.extension;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Picture other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Picture;
  }

  @override
  void update(void updates(PictureBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Picture build() {
    final _$result = _$v ?? new _$Picture._(path: path, extension: extension);
    replace(_$result);
    return _$result;
  }
}
