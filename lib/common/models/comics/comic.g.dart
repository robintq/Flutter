// GENERATED CODE - DO NOT MODIFY BY HAND

part of comic;

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

Serializer<Comic> _$comicSerializer = new _$ComicSerializer();

class _$ComicSerializer implements StructuredSerializer<Comic> {
  @override
  final Iterable<Type> types = const [Comic, _$Comic];
  @override
  final String wireName = 'Comic';

  @override
  Iterable serialize(Serializers serializers, Comic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'digitalId',
      serializers.serialize(object.digitalId,
          specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'issueNumber',
      serializers.serialize(object.issueNumber,
          specifiedType: const FullType(double)),
      'variantDescription',
      serializers.serialize(object.variantDescription,
          specifiedType: const FullType(String)),
      'modified',
      serializers.serialize(object.modified,
          specifiedType: const FullType(String)),
      'isbn',
      serializers.serialize(object.isbn, specifiedType: const FullType(String)),
      'upc',
      serializers.serialize(object.upc, specifiedType: const FullType(String)),
      'diamondCode',
      serializers.serialize(object.diamondCode,
          specifiedType: const FullType(String)),
      'ean',
      serializers.serialize(object.ean, specifiedType: const FullType(String)),
      'issn',
      serializers.serialize(object.issn, specifiedType: const FullType(String)),
      'format',
      serializers.serialize(object.format,
          specifiedType: const FullType(String)),
      'pageCount',
      serializers.serialize(object.pageCount,
          specifiedType: const FullType(int)),
      'textObjects',
      serializers.serialize(object.textObjects,
          specifiedType:
              const FullType(BuiltList, const [const FullType(TextObject)])),
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Url)])),
      'series',
      serializers.serialize(object.series,
          specifiedType: const FullType(SeriesSummary)),
      'variants',
      serializers.serialize(object.variants,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ComicSummary)])),
      'collections',
      serializers.serialize(object.collections,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ComicSummary)])),
      'collectedIssues',
      serializers.serialize(object.collectedIssues,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ComicSummary)])),
      'dates',
      serializers.serialize(object.dates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ComicDate)])),
      'prices',
      serializers.serialize(object.prices,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ComicPrice)])),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(Picture)),
      'images',
      serializers.serialize(object.images,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Picture)])),
      'creators',
      serializers.serialize(object.creators,
          specifiedType: const FullType(CreatorList)),
      'stories',
      serializers.serialize(object.stories,
          specifiedType: const FullType(StoryList)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(EventList)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.characters != null) {
      result
        ..add('characters')
        ..add(serializers.serialize(object.characters,
            specifiedType: const FullType(CharacterList)));
    }

    return result;
  }

  @override
  Comic deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'digitalId':
          result.digitalId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueNumber':
          result.issueNumber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'variantDescription':
          result.variantDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modified':
          result.modified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isbn':
          result.isbn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'upc':
          result.upc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'diamondCode':
          result.diamondCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ean':
          result.ean = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issn':
          result.issn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pageCount':
          result.pageCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'textObjects':
          result.textObjects.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(TextObject)])) as BuiltList);
          break;
        case 'resourceURI':
          result.resourceURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Url)]))
              as BuiltList);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesSummary)) as SeriesSummary);
          break;
        case 'variants':
          result.variants.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ComicSummary)]))
              as BuiltList);
          break;
        case 'collections':
          result.collections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ComicSummary)]))
              as BuiltList);
          break;
        case 'collectedIssues':
          result.collectedIssues.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ComicSummary)]))
              as BuiltList);
          break;
        case 'dates':
          result.dates.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(ComicDate)])) as BuiltList);
          break;
        case 'prices':
          result.prices.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(ComicPrice)])) as BuiltList);
          break;
        case 'thumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
              specifiedType: const FullType(Picture)) as Picture);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Picture)])) as BuiltList);
          break;
        case 'creators':
          result.creators.replace(serializers.deserialize(value,
              specifiedType: const FullType(CreatorList)) as CreatorList);
          break;
        case 'characters':
          result.characters.replace(serializers.deserialize(value,
              specifiedType: const FullType(CharacterList)) as CharacterList);
          break;
        case 'stories':
          result.stories.replace(serializers.deserialize(value,
              specifiedType: const FullType(StoryList)) as StoryList);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventList)) as EventList);
          break;
      }
    }

    return result.build();
  }
}

class _$Comic extends Comic {
  @override
  final int id;
  @override
  final int digitalId;
  @override
  final String title;
  @override
  final double issueNumber;
  @override
  final String variantDescription;
  @override
  final String description;
  @override
  final String modified;
  @override
  final String isbn;
  @override
  final String upc;
  @override
  final String diamondCode;
  @override
  final String ean;
  @override
  final String issn;
  @override
  final String format;
  @override
  final int pageCount;
  @override
  final BuiltList<TextObject> textObjects;
  @override
  final String resourceURI;
  @override
  final BuiltList<Url> urls;
  @override
  final SeriesSummary series;
  @override
  final BuiltList<ComicSummary> variants;
  @override
  final BuiltList<ComicSummary> collections;
  @override
  final BuiltList<ComicSummary> collectedIssues;
  @override
  final BuiltList<ComicDate> dates;
  @override
  final BuiltList<ComicPrice> prices;
  @override
  final Picture thumbnail;
  @override
  final BuiltList<Picture> images;
  @override
  final CreatorList creators;
  @override
  final CharacterList characters;
  @override
  final StoryList stories;
  @override
  final EventList events;

  factory _$Comic([void updates(ComicBuilder b)]) =>
      (new ComicBuilder()..update(updates)).build();

  _$Comic._(
      {this.id,
      this.digitalId,
      this.title,
      this.issueNumber,
      this.variantDescription,
      this.description,
      this.modified,
      this.isbn,
      this.upc,
      this.diamondCode,
      this.ean,
      this.issn,
      this.format,
      this.pageCount,
      this.textObjects,
      this.resourceURI,
      this.urls,
      this.series,
      this.variants,
      this.collections,
      this.collectedIssues,
      this.dates,
      this.prices,
      this.thumbnail,
      this.images,
      this.creators,
      this.characters,
      this.stories,
      this.events})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Comic', 'id');
    if (digitalId == null)
      throw new BuiltValueNullFieldError('Comic', 'digitalId');
    if (title == null) throw new BuiltValueNullFieldError('Comic', 'title');
    if (issueNumber == null)
      throw new BuiltValueNullFieldError('Comic', 'issueNumber');
    if (variantDescription == null)
      throw new BuiltValueNullFieldError('Comic', 'variantDescription');
    if (modified == null)
      throw new BuiltValueNullFieldError('Comic', 'modified');
    if (isbn == null) throw new BuiltValueNullFieldError('Comic', 'isbn');
    if (upc == null) throw new BuiltValueNullFieldError('Comic', 'upc');
    if (diamondCode == null)
      throw new BuiltValueNullFieldError('Comic', 'diamondCode');
    if (ean == null) throw new BuiltValueNullFieldError('Comic', 'ean');
    if (issn == null) throw new BuiltValueNullFieldError('Comic', 'issn');
    if (format == null) throw new BuiltValueNullFieldError('Comic', 'format');
    if (pageCount == null)
      throw new BuiltValueNullFieldError('Comic', 'pageCount');
    if (textObjects == null)
      throw new BuiltValueNullFieldError('Comic', 'textObjects');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Comic', 'resourceURI');
    if (urls == null) throw new BuiltValueNullFieldError('Comic', 'urls');
    if (series == null) throw new BuiltValueNullFieldError('Comic', 'series');
    if (variants == null)
      throw new BuiltValueNullFieldError('Comic', 'variants');
    if (collections == null)
      throw new BuiltValueNullFieldError('Comic', 'collections');
    if (collectedIssues == null)
      throw new BuiltValueNullFieldError('Comic', 'collectedIssues');
    if (dates == null) throw new BuiltValueNullFieldError('Comic', 'dates');
    if (prices == null) throw new BuiltValueNullFieldError('Comic', 'prices');
    if (thumbnail == null)
      throw new BuiltValueNullFieldError('Comic', 'thumbnail');
    if (images == null) throw new BuiltValueNullFieldError('Comic', 'images');
    if (creators == null)
      throw new BuiltValueNullFieldError('Comic', 'creators');
    if (stories == null) throw new BuiltValueNullFieldError('Comic', 'stories');
    if (events == null) throw new BuiltValueNullFieldError('Comic', 'events');
  }

  @override
  Comic rebuild(void updates(ComicBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ComicBuilder toBuilder() => new ComicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comic &&
        id == other.id &&
        digitalId == other.digitalId &&
        title == other.title &&
        issueNumber == other.issueNumber &&
        variantDescription == other.variantDescription &&
        description == other.description &&
        modified == other.modified &&
        isbn == other.isbn &&
        upc == other.upc &&
        diamondCode == other.diamondCode &&
        ean == other.ean &&
        issn == other.issn &&
        format == other.format &&
        pageCount == other.pageCount &&
        textObjects == other.textObjects &&
        resourceURI == other.resourceURI &&
        urls == other.urls &&
        series == other.series &&
        variants == other.variants &&
        collections == other.collections &&
        collectedIssues == other.collectedIssues &&
        dates == other.dates &&
        prices == other.prices &&
        thumbnail == other.thumbnail &&
        images == other.images &&
        creators == other.creators &&
        characters == other.characters &&
        stories == other.stories &&
        events == other.events;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), digitalId.hashCode), title.hashCode), issueNumber.hashCode), variantDescription.hashCode), description.hashCode), modified.hashCode), isbn.hashCode), upc.hashCode), diamondCode.hashCode),
                                                                                ean.hashCode),
                                                                            issn.hashCode),
                                                                        format.hashCode),
                                                                    pageCount.hashCode),
                                                                textObjects.hashCode),
                                                            resourceURI.hashCode),
                                                        urls.hashCode),
                                                    series.hashCode),
                                                variants.hashCode),
                                            collections.hashCode),
                                        collectedIssues.hashCode),
                                    dates.hashCode),
                                prices.hashCode),
                            thumbnail.hashCode),
                        images.hashCode),
                    creators.hashCode),
                characters.hashCode),
            stories.hashCode),
        events.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comic')
          ..add('id', id)
          ..add('digitalId', digitalId)
          ..add('title', title)
          ..add('issueNumber', issueNumber)
          ..add('variantDescription', variantDescription)
          ..add('description', description)
          ..add('modified', modified)
          ..add('isbn', isbn)
          ..add('upc', upc)
          ..add('diamondCode', diamondCode)
          ..add('ean', ean)
          ..add('issn', issn)
          ..add('format', format)
          ..add('pageCount', pageCount)
          ..add('textObjects', textObjects)
          ..add('resourceURI', resourceURI)
          ..add('urls', urls)
          ..add('series', series)
          ..add('variants', variants)
          ..add('collections', collections)
          ..add('collectedIssues', collectedIssues)
          ..add('dates', dates)
          ..add('prices', prices)
          ..add('thumbnail', thumbnail)
          ..add('images', images)
          ..add('creators', creators)
          ..add('characters', characters)
          ..add('stories', stories)
          ..add('events', events))
        .toString();
  }
}

class ComicBuilder implements Builder<Comic, ComicBuilder> {
  _$Comic _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _digitalId;
  int get digitalId => _$this._digitalId;
  set digitalId(int digitalId) => _$this._digitalId = digitalId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _issueNumber;
  double get issueNumber => _$this._issueNumber;
  set issueNumber(double issueNumber) => _$this._issueNumber = issueNumber;

  String _variantDescription;
  String get variantDescription => _$this._variantDescription;
  set variantDescription(String variantDescription) =>
      _$this._variantDescription = variantDescription;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _modified;
  String get modified => _$this._modified;
  set modified(String modified) => _$this._modified = modified;

  String _isbn;
  String get isbn => _$this._isbn;
  set isbn(String isbn) => _$this._isbn = isbn;

  String _upc;
  String get upc => _$this._upc;
  set upc(String upc) => _$this._upc = upc;

  String _diamondCode;
  String get diamondCode => _$this._diamondCode;
  set diamondCode(String diamondCode) => _$this._diamondCode = diamondCode;

  String _ean;
  String get ean => _$this._ean;
  set ean(String ean) => _$this._ean = ean;

  String _issn;
  String get issn => _$this._issn;
  set issn(String issn) => _$this._issn = issn;

  String _format;
  String get format => _$this._format;
  set format(String format) => _$this._format = format;

  int _pageCount;
  int get pageCount => _$this._pageCount;
  set pageCount(int pageCount) => _$this._pageCount = pageCount;

  ListBuilder<TextObject> _textObjects;
  ListBuilder<TextObject> get textObjects =>
      _$this._textObjects ??= new ListBuilder<TextObject>();
  set textObjects(ListBuilder<TextObject> textObjects) =>
      _$this._textObjects = textObjects;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  ListBuilder<Url> _urls;
  ListBuilder<Url> get urls => _$this._urls ??= new ListBuilder<Url>();
  set urls(ListBuilder<Url> urls) => _$this._urls = urls;

  SeriesSummaryBuilder _series;
  SeriesSummaryBuilder get series =>
      _$this._series ??= new SeriesSummaryBuilder();
  set series(SeriesSummaryBuilder series) => _$this._series = series;

  ListBuilder<ComicSummary> _variants;
  ListBuilder<ComicSummary> get variants =>
      _$this._variants ??= new ListBuilder<ComicSummary>();
  set variants(ListBuilder<ComicSummary> variants) =>
      _$this._variants = variants;

  ListBuilder<ComicSummary> _collections;
  ListBuilder<ComicSummary> get collections =>
      _$this._collections ??= new ListBuilder<ComicSummary>();
  set collections(ListBuilder<ComicSummary> collections) =>
      _$this._collections = collections;

  ListBuilder<ComicSummary> _collectedIssues;
  ListBuilder<ComicSummary> get collectedIssues =>
      _$this._collectedIssues ??= new ListBuilder<ComicSummary>();
  set collectedIssues(ListBuilder<ComicSummary> collectedIssues) =>
      _$this._collectedIssues = collectedIssues;

  ListBuilder<ComicDate> _dates;
  ListBuilder<ComicDate> get dates =>
      _$this._dates ??= new ListBuilder<ComicDate>();
  set dates(ListBuilder<ComicDate> dates) => _$this._dates = dates;

  ListBuilder<ComicPrice> _prices;
  ListBuilder<ComicPrice> get prices =>
      _$this._prices ??= new ListBuilder<ComicPrice>();
  set prices(ListBuilder<ComicPrice> prices) => _$this._prices = prices;

  PictureBuilder _thumbnail;
  PictureBuilder get thumbnail => _$this._thumbnail ??= new PictureBuilder();
  set thumbnail(PictureBuilder thumbnail) => _$this._thumbnail = thumbnail;

  ListBuilder<Picture> _images;
  ListBuilder<Picture> get images =>
      _$this._images ??= new ListBuilder<Picture>();
  set images(ListBuilder<Picture> images) => _$this._images = images;

  CreatorListBuilder _creators;
  CreatorListBuilder get creators =>
      _$this._creators ??= new CreatorListBuilder();
  set creators(CreatorListBuilder creators) => _$this._creators = creators;

  CharacterListBuilder _characters;
  CharacterListBuilder get characters =>
      _$this._characters ??= new CharacterListBuilder();
  set characters(CharacterListBuilder characters) =>
      _$this._characters = characters;

  StoryListBuilder _stories;
  StoryListBuilder get stories => _$this._stories ??= new StoryListBuilder();
  set stories(StoryListBuilder stories) => _$this._stories = stories;

  EventListBuilder _events;
  EventListBuilder get events => _$this._events ??= new EventListBuilder();
  set events(EventListBuilder events) => _$this._events = events;

  ComicBuilder();

  ComicBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _digitalId = _$v.digitalId;
      _title = _$v.title;
      _issueNumber = _$v.issueNumber;
      _variantDescription = _$v.variantDescription;
      _description = _$v.description;
      _modified = _$v.modified;
      _isbn = _$v.isbn;
      _upc = _$v.upc;
      _diamondCode = _$v.diamondCode;
      _ean = _$v.ean;
      _issn = _$v.issn;
      _format = _$v.format;
      _pageCount = _$v.pageCount;
      _textObjects = _$v.textObjects?.toBuilder();
      _resourceURI = _$v.resourceURI;
      _urls = _$v.urls?.toBuilder();
      _series = _$v.series?.toBuilder();
      _variants = _$v.variants?.toBuilder();
      _collections = _$v.collections?.toBuilder();
      _collectedIssues = _$v.collectedIssues?.toBuilder();
      _dates = _$v.dates?.toBuilder();
      _prices = _$v.prices?.toBuilder();
      _thumbnail = _$v.thumbnail?.toBuilder();
      _images = _$v.images?.toBuilder();
      _creators = _$v.creators?.toBuilder();
      _characters = _$v.characters?.toBuilder();
      _stories = _$v.stories?.toBuilder();
      _events = _$v.events?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comic other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Comic;
  }

  @override
  void update(void updates(ComicBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comic build() {
    _$Comic _$result;
    try {
      _$result = _$v ??
          new _$Comic._(
              id: id,
              digitalId: digitalId,
              title: title,
              issueNumber: issueNumber,
              variantDescription: variantDescription,
              description: description,
              modified: modified,
              isbn: isbn,
              upc: upc,
              diamondCode: diamondCode,
              ean: ean,
              issn: issn,
              format: format,
              pageCount: pageCount,
              textObjects: textObjects.build(),
              resourceURI: resourceURI,
              urls: urls.build(),
              series: series.build(),
              variants: variants.build(),
              collections: collections.build(),
              collectedIssues: collectedIssues.build(),
              dates: dates.build(),
              prices: prices.build(),
              thumbnail: thumbnail.build(),
              images: images.build(),
              creators: creators.build(),
              characters: _characters?.build(),
              stories: stories.build(),
              events: events.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'textObjects';
        textObjects.build();

        _$failedField = 'urls';
        urls.build();
        _$failedField = 'series';
        series.build();
        _$failedField = 'variants';
        variants.build();
        _$failedField = 'collections';
        collections.build();
        _$failedField = 'collectedIssues';
        collectedIssues.build();
        _$failedField = 'dates';
        dates.build();
        _$failedField = 'prices';
        prices.build();
        _$failedField = 'thumbnail';
        thumbnail.build();
        _$failedField = 'images';
        images.build();
        _$failedField = 'creators';
        creators.build();
        _$failedField = 'characters';
        _characters?.build();
        _$failedField = 'stories';
        stories.build();
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
