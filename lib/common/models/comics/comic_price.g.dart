// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic_price;

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

Serializer<ComicPrice> _$comicPriceSerializer = new _$ComicPriceSerializer();

class _$ComicPriceSerializer implements StructuredSerializer<ComicPrice> {
  @override
  final Iterable<Type> types = const [ComicPrice, _$ComicPrice];
  @override
  final String wireName = 'ComicPrice';

  @override
  Iterable serialize(Serializers serializers, ComicPrice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'price',
      serializers.serialize(object.price,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  ComicPrice deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicPriceBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ComicPrice extends ComicPrice {
  @override
  final String type;
  @override
  final double price;

  factory _$ComicPrice([void updates(ComicPriceBuilder b)]) =>
      (new ComicPriceBuilder()..update(updates)).build();

  _$ComicPrice._({this.type, this.price}) : super._() {
    if (type == null) throw new BuiltValueNullFieldError('ComicPrice', 'type');
    if (price == null)
      throw new BuiltValueNullFieldError('ComicPrice', 'price');
  }

  @override
  ComicPrice rebuild(void updates(ComicPriceBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicPriceBuilder toBuilder() => new ComicPriceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComicPrice && type == other.type && price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ComicPrice')
          ..add('type', type)
          ..add('price', price))
        .toString();
  }
}

class ComicPriceBuilder implements Builder<ComicPrice, ComicPriceBuilder> {
  _$ComicPrice _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  ComicPriceBuilder();

  ComicPriceBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _price = _$v.price;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComicPrice other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ComicPrice;
  }

  @override
  void update(void updates(ComicPriceBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ComicPrice build() {
    final _$result = _$v ?? new _$ComicPrice._(type: type, price: price);
    replace(_$result);
    return _$result;
  }
}
