// GENERATED CODE - DO NOT MODIFY BY HAND

part of series_data_wrapper;

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

Serializer<SeriesDataWrapper> _$seriesDataWrapperSerializer =
    new _$SeriesDataWrapperSerializer();

class _$SeriesDataWrapperSerializer
    implements StructuredSerializer<SeriesDataWrapper> {
  @override
  final Iterable<Type> types = const [SeriesDataWrapper, _$SeriesDataWrapper];
  @override
  final String wireName = 'SeriesDataWrapper';

  @override
  Iterable serialize(Serializers serializers, SeriesDataWrapper object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'copyright',
      serializers.serialize(object.copyright,
          specifiedType: const FullType(String)),
      'attributionText',
      serializers.serialize(object.attributionText,
          specifiedType: const FullType(String)),
      'attributionHTML',
      serializers.serialize(object.attributionHTML,
          specifiedType: const FullType(String)),
      'etag',
      serializers.serialize(object.etag, specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(SeriesDataContainer)),
    ];

    return result;
  }

  @override
  SeriesDataWrapper deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesDataWrapperBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'copyright':
          result.copyright = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attributionText':
          result.attributionText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'attributionHTML':
          result.attributionHTML = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'etag':
          result.etag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SeriesDataContainer))
              as SeriesDataContainer);
          break;
      }
    }

    return result.build();
  }
}

class _$SeriesDataWrapper extends SeriesDataWrapper {
  @override
  final int code;
  @override
  final String status;
  @override
  final String copyright;
  @override
  final String attributionText;
  @override
  final String attributionHTML;
  @override
  final String etag;
  @override
  final SeriesDataContainer data;

  factory _$SeriesDataWrapper([void updates(SeriesDataWrapperBuilder b)]) =>
      (new SeriesDataWrapperBuilder()..update(updates)).build();

  _$SeriesDataWrapper._(
      {this.code,
      this.status,
      this.copyright,
      this.attributionText,
      this.attributionHTML,
      this.etag,
      this.data})
      : super._() {
    if (code == null)
      throw new BuiltValueNullFieldError('SeriesDataWrapper', 'code');
    if (status == null)
      throw new BuiltValueNullFieldError('SeriesDataWrapper', 'status');
    if (copyright == null)
      throw new BuiltValueNullFieldError('SeriesDataWrapper', 'copyright');
    if (attributionText == null)
      throw new BuiltValueNullFieldError(
          'SeriesDataWrapper', 'attributionText');
    if (attributionHTML == null)
      throw new BuiltValueNullFieldError(
          'SeriesDataWrapper', 'attributionHTML');
    if (etag == null)
      throw new BuiltValueNullFieldError('SeriesDataWrapper', 'etag');
    if (data == null)
      throw new BuiltValueNullFieldError('SeriesDataWrapper', 'data');
  }

  @override
  SeriesDataWrapper rebuild(void updates(SeriesDataWrapperBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesDataWrapperBuilder toBuilder() =>
      new SeriesDataWrapperBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeriesDataWrapper &&
        code == other.code &&
        status == other.status &&
        copyright == other.copyright &&
        attributionText == other.attributionText &&
        attributionHTML == other.attributionHTML &&
        etag == other.etag &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, code.hashCode), status.hashCode),
                        copyright.hashCode),
                    attributionText.hashCode),
                attributionHTML.hashCode),
            etag.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeriesDataWrapper')
          ..add('code', code)
          ..add('status', status)
          ..add('copyright', copyright)
          ..add('attributionText', attributionText)
          ..add('attributionHTML', attributionHTML)
          ..add('etag', etag)
          ..add('data', data))
        .toString();
  }
}

class SeriesDataWrapperBuilder
    implements Builder<SeriesDataWrapper, SeriesDataWrapperBuilder> {
  _$SeriesDataWrapper _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _copyright;
  String get copyright => _$this._copyright;
  set copyright(String copyright) => _$this._copyright = copyright;

  String _attributionText;
  String get attributionText => _$this._attributionText;
  set attributionText(String attributionText) =>
      _$this._attributionText = attributionText;

  String _attributionHTML;
  String get attributionHTML => _$this._attributionHTML;
  set attributionHTML(String attributionHTML) =>
      _$this._attributionHTML = attributionHTML;

  String _etag;
  String get etag => _$this._etag;
  set etag(String etag) => _$this._etag = etag;

  SeriesDataContainerBuilder _data;
  SeriesDataContainerBuilder get data =>
      _$this._data ??= new SeriesDataContainerBuilder();
  set data(SeriesDataContainerBuilder data) => _$this._data = data;

  SeriesDataWrapperBuilder();

  SeriesDataWrapperBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _status = _$v.status;
      _copyright = _$v.copyright;
      _attributionText = _$v.attributionText;
      _attributionHTML = _$v.attributionHTML;
      _etag = _$v.etag;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeriesDataWrapper other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$SeriesDataWrapper;
  }

  @override
  void update(void updates(SeriesDataWrapperBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SeriesDataWrapper build() {
    _$SeriesDataWrapper _$result;
    try {
      _$result = _$v ??
          new _$SeriesDataWrapper._(
              code: code,
              status: status,
              copyright: copyright,
              attributionText: attributionText,
              attributionHTML: attributionHTML,
              etag: etag,
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SeriesDataWrapper', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
