// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic_date;

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

Serializer<ComicDate> _$comicDateSerializer = new _$ComicDateSerializer();

class _$ComicDateSerializer implements StructuredSerializer<ComicDate> {
  @override
  final Iterable<Type> types = const [ComicDate, _$ComicDate];
  @override
  final String wireName = 'ComicDate';

  @override
  Iterable serialize(Serializers serializers, ComicDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ComicDate deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicDateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ComicDate extends ComicDate {
  @override
  final String type;
  @override
  final String date;

  factory _$ComicDate([void updates(ComicDateBuilder b)]) =>
      (new ComicDateBuilder()..update(updates)).build();

  _$ComicDate._({this.type, this.date}) : super._() {
    if (type == null) throw new BuiltValueNullFieldError('ComicDate', 'type');
    if (date == null) throw new BuiltValueNullFieldError('ComicDate', 'date');
  }

  @override
  ComicDate rebuild(void updates(ComicDateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicDateBuilder toBuilder() => new ComicDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComicDate && type == other.type && date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComicDate')
          ..add('type', type)
          ..add('date', date))
        .toString();
  }
}

class ComicDateBuilder implements Builder<ComicDate, ComicDateBuilder> {
  _$ComicDate _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  ComicDateBuilder();

  ComicDateBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComicDate other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ComicDate;
  }

  @override
  void update(void updates(ComicDateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ComicDate build() {
    final _$result = _$v ?? new _$ComicDate._(type: type, date: date);
    replace(_$result);
    return _$result;
  }
}
