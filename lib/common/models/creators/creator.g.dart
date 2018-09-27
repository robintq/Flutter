// GENERATED CODE - DO NOT MODIFY BY HAND

part of creator;

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

Serializer<Creator> _$creatorSerializer = new _$CreatorSerializer();

class _$CreatorSerializer implements StructuredSerializer<Creator> {
  @override
  final Iterable<Type> types = const [Creator, _$Creator];
  @override
  final String wireName = 'Creator';

  @override
  Iterable serialize(Serializers serializers, Creator object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'firstName',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'middleName',
      serializers.serialize(object.middleName,
          specifiedType: const FullType(String)),
      'lastName',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'suffix',
      serializers.serialize(object.suffix,
          specifiedType: const FullType(String)),
      'fullName',
      serializers.serialize(object.fullName,
          specifiedType: const FullType(String)),
      'modified',
      serializers.serialize(object.modified,
          specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(Picture)),
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'comics',
      serializers.serialize(object.comics,
          specifiedType: const FullType(ComicList)),
      'series',
      serializers.serialize(object.series,
          specifiedType: const FullType(SeriesList)),
      'stories',
      serializers.serialize(object.stories,
          specifiedType: const FullType(StoryList)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(EventList)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Url)])),
    ];

    return result;
  }

  @override
  Creator deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatorBuilder();

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
        case 'firstName':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'middleName':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastName':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'suffix':
          result.suffix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modified':
          result.modified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
              specifiedType: const FullType(Picture)) as Picture);
          break;
        case 'resourceURI':
          result.resourceURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comics':
          result.comics.replace(serializers.deserialize(value,
              specifiedType: const FullType(ComicList)) as ComicList);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesList)) as SeriesList);
          break;
        case 'stories':
          result.stories.replace(serializers.deserialize(value,
              specifiedType: const FullType(StoryList)) as StoryList);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventList)) as EventList);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Url)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Creator extends Creator {
  @override
  final int id;
  @override
  final String firstName;
  @override
  final String middleName;
  @override
  final String lastName;
  @override
  final String suffix;
  @override
  final String fullName;
  @override
  final String modified;
  @override
  final Picture thumbnail;
  @override
  final String resourceURI;
  @override
  final ComicList comics;
  @override
  final SeriesList series;
  @override
  final StoryList stories;
  @override
  final EventList events;
  @override
  final BuiltList<Url> urls;

  factory _$Creator([void updates(CreatorBuilder b)]) =>
      (new CreatorBuilder()..update(updates)).build();

  _$Creator._(
      {this.id,
      this.firstName,
      this.middleName,
      this.lastName,
      this.suffix,
      this.fullName,
      this.modified,
      this.thumbnail,
      this.resourceURI,
      this.comics,
      this.series,
      this.stories,
      this.events,
      this.urls})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Creator', 'id');
    if (firstName == null)
      throw new BuiltValueNullFieldError('Creator', 'firstName');
    if (middleName == null)
      throw new BuiltValueNullFieldError('Creator', 'middleName');
    if (lastName == null)
      throw new BuiltValueNullFieldError('Creator', 'lastName');
    if (suffix == null) throw new BuiltValueNullFieldError('Creator', 'suffix');
    if (fullName == null)
      throw new BuiltValueNullFieldError('Creator', 'fullName');
    if (modified == null)
      throw new BuiltValueNullFieldError('Creator', 'modified');
    if (thumbnail == null)
      throw new BuiltValueNullFieldError('Creator', 'thumbnail');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Creator', 'resourceURI');
    if (comics == null) throw new BuiltValueNullFieldError('Creator', 'comics');
    if (series == null) throw new BuiltValueNullFieldError('Creator', 'series');
    if (stories == null)
      throw new BuiltValueNullFieldError('Creator', 'stories');
    if (events == null) throw new BuiltValueNullFieldError('Creator', 'events');
    if (urls == null) throw new BuiltValueNullFieldError('Creator', 'urls');
  }

  @override
  Creator rebuild(void updates(CreatorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatorBuilder toBuilder() => new CreatorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creator &&
        id == other.id &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        suffix == other.suffix &&
        fullName == other.fullName &&
        modified == other.modified &&
        thumbnail == other.thumbnail &&
        resourceURI == other.resourceURI &&
        comics == other.comics &&
        series == other.series &&
        stories == other.stories &&
        events == other.events &&
        urls == other.urls;
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
                                                    $jc($jc(0, id.hashCode),
                                                        firstName.hashCode),
                                                    middleName.hashCode),
                                                lastName.hashCode),
                                            suffix.hashCode),
                                        fullName.hashCode),
                                    modified.hashCode),
                                thumbnail.hashCode),
                            resourceURI.hashCode),
                        comics.hashCode),
                    series.hashCode),
                stories.hashCode),
            events.hashCode),
        urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Creator')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('suffix', suffix)
          ..add('fullName', fullName)
          ..add('modified', modified)
          ..add('thumbnail', thumbnail)
          ..add('resourceURI', resourceURI)
          ..add('comics', comics)
          ..add('series', series)
          ..add('stories', stories)
          ..add('events', events)
          ..add('urls', urls))
        .toString();
  }
}

class CreatorBuilder implements Builder<Creator, CreatorBuilder> {
  _$Creator _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _middleName;
  String get middleName => _$this._middleName;
  set middleName(String middleName) => _$this._middleName = middleName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _suffix;
  String get suffix => _$this._suffix;
  set suffix(String suffix) => _$this._suffix = suffix;

  String _fullName;
  String get fullName => _$this._fullName;
  set fullName(String fullName) => _$this._fullName = fullName;

  String _modified;
  String get modified => _$this._modified;
  set modified(String modified) => _$this._modified = modified;

  PictureBuilder _thumbnail;
  PictureBuilder get thumbnail => _$this._thumbnail ??= new PictureBuilder();
  set thumbnail(PictureBuilder thumbnail) => _$this._thumbnail = thumbnail;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  ComicListBuilder _comics;
  ComicListBuilder get comics => _$this._comics ??= new ComicListBuilder();
  set comics(ComicListBuilder comics) => _$this._comics = comics;

  SeriesListBuilder _series;
  SeriesListBuilder get series => _$this._series ??= new SeriesListBuilder();
  set series(SeriesListBuilder series) => _$this._series = series;

  StoryListBuilder _stories;
  StoryListBuilder get stories => _$this._stories ??= new StoryListBuilder();
  set stories(StoryListBuilder stories) => _$this._stories = stories;

  EventListBuilder _events;
  EventListBuilder get events => _$this._events ??= new EventListBuilder();
  set events(EventListBuilder events) => _$this._events = events;

  ListBuilder<Url> _urls;
  ListBuilder<Url> get urls => _$this._urls ??= new ListBuilder<Url>();
  set urls(ListBuilder<Url> urls) => _$this._urls = urls;

  CreatorBuilder();

  CreatorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _firstName = _$v.firstName;
      _middleName = _$v.middleName;
      _lastName = _$v.lastName;
      _suffix = _$v.suffix;
      _fullName = _$v.fullName;
      _modified = _$v.modified;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _resourceURI = _$v.resourceURI;
      _comics = _$v.comics?.toBuilder();
      _series = _$v.series?.toBuilder();
      _stories = _$v.stories?.toBuilder();
      _events = _$v.events?.toBuilder();
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creator other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Creator;
  }

  @override
  void update(void updates(CreatorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Creator build() {
    _$Creator _$result;
    try {
      _$result = _$v ??
          new _$Creator._(
              id: id,
              firstName: firstName,
              middleName: middleName,
              lastName: lastName,
              suffix: suffix,
              fullName: fullName,
              modified: modified,
              thumbnail: thumbnail.build(),
              resourceURI: resourceURI,
              comics: comics.build(),
              series: series.build(),
              stories: stories.build(),
              events: events.build(),
              urls: urls.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnail';
        thumbnail.build();

        _$failedField = 'comics';
        comics.build();
        _$failedField = 'series';
        series.build();
        _$failedField = 'stories';
        stories.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Creator', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
