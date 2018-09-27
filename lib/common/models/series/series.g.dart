// GENERATED CODE - DO NOT MODIFY BY HAND

part of series;

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

Serializer<Series> _$seriesSerializer = new _$SeriesSerializer();

class _$SeriesSerializer implements StructuredSerializer<Series> {
  @override
  final Iterable<Type> types = const [Series, _$Series];
  @override
  final String wireName = 'Series';

  @override
  Iterable serialize(Serializers serializers, Series object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Url)])),
      'startYear',
      serializers.serialize(object.startYear,
          specifiedType: const FullType(int)),
      'endYear',
      serializers.serialize(object.endYear, specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'modified',
      serializers.serialize(object.modified,
          specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(Picture)),
      'creators',
      serializers.serialize(object.creators,
          specifiedType: const FullType(CreatorList)),
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(CharacterList)),
      'stories',
      serializers.serialize(object.stories,
          specifiedType: const FullType(StoryList)),
      'comics',
      serializers.serialize(object.comics,
          specifiedType: const FullType(ComicList)),
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
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(SeriesSummary)));
    }
    if (object.previous != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(object.previous,
            specifiedType: const FullType(SeriesSummary)));
    }

    return result;
  }

  @override
  Series deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'startYear':
          result.startYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'endYear':
          result.endYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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
        case 'comics':
          result.comics.replace(serializers.deserialize(value,
              specifiedType: const FullType(ComicList)) as ComicList);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventList)) as EventList);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesSummary)) as SeriesSummary);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesSummary)) as SeriesSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$Series extends Series {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String resourceURI;
  @override
  final BuiltList<Url> urls;
  @override
  final int startYear;
  @override
  final int endYear;
  @override
  final String rating;
  @override
  final String type;
  @override
  final String modified;
  @override
  final Picture thumbnail;
  @override
  final CreatorList creators;
  @override
  final CharacterList characters;
  @override
  final StoryList stories;
  @override
  final ComicList comics;
  @override
  final EventList events;
  @override
  final SeriesSummary next;
  @override
  final SeriesSummary previous;

  factory _$Series([void updates(SeriesBuilder b)]) =>
      (new SeriesBuilder()..update(updates)).build();

  _$Series._(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.urls,
      this.startYear,
      this.endYear,
      this.rating,
      this.type,
      this.modified,
      this.thumbnail,
      this.creators,
      this.characters,
      this.stories,
      this.comics,
      this.events,
      this.next,
      this.previous})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Series', 'id');
    if (title == null) throw new BuiltValueNullFieldError('Series', 'title');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Series', 'resourceURI');
    if (urls == null) throw new BuiltValueNullFieldError('Series', 'urls');
    if (startYear == null)
      throw new BuiltValueNullFieldError('Series', 'startYear');
    if (endYear == null)
      throw new BuiltValueNullFieldError('Series', 'endYear');
    if (rating == null) throw new BuiltValueNullFieldError('Series', 'rating');
    if (type == null) throw new BuiltValueNullFieldError('Series', 'type');
    if (modified == null)
      throw new BuiltValueNullFieldError('Series', 'modified');
    if (thumbnail == null)
      throw new BuiltValueNullFieldError('Series', 'thumbnail');
    if (creators == null)
      throw new BuiltValueNullFieldError('Series', 'creators');
    if (characters == null)
      throw new BuiltValueNullFieldError('Series', 'characters');
    if (stories == null)
      throw new BuiltValueNullFieldError('Series', 'stories');
    if (comics == null) throw new BuiltValueNullFieldError('Series', 'comics');
    if (events == null) throw new BuiltValueNullFieldError('Series', 'events');
  }

  @override
  Series rebuild(void updates(SeriesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesBuilder toBuilder() => new SeriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Series &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        resourceURI == other.resourceURI &&
        urls == other.urls &&
        startYear == other.startYear &&
        endYear == other.endYear &&
        rating == other.rating &&
        type == other.type &&
        modified == other.modified &&
        thumbnail == other.thumbnail &&
        creators == other.creators &&
        characters == other.characters &&
        stories == other.stories &&
        comics == other.comics &&
        events == other.events &&
        next == other.next &&
        previous == other.previous;
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
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        title
                                                                            .hashCode),
                                                                    description
                                                                        .hashCode),
                                                                resourceURI
                                                                    .hashCode),
                                                            urls.hashCode),
                                                        startYear.hashCode),
                                                    endYear.hashCode),
                                                rating.hashCode),
                                            type.hashCode),
                                        modified.hashCode),
                                    thumbnail.hashCode),
                                creators.hashCode),
                            characters.hashCode),
                        stories.hashCode),
                    comics.hashCode),
                events.hashCode),
            next.hashCode),
        previous.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Series')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('resourceURI', resourceURI)
          ..add('urls', urls)
          ..add('startYear', startYear)
          ..add('endYear', endYear)
          ..add('rating', rating)
          ..add('type', type)
          ..add('modified', modified)
          ..add('thumbnail', thumbnail)
          ..add('creators', creators)
          ..add('characters', characters)
          ..add('stories', stories)
          ..add('comics', comics)
          ..add('events', events)
          ..add('next', next)
          ..add('previous', previous))
        .toString();
  }
}

class SeriesBuilder implements Builder<Series, SeriesBuilder> {
  _$Series _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  ListBuilder<Url> _urls;
  ListBuilder<Url> get urls => _$this._urls ??= new ListBuilder<Url>();
  set urls(ListBuilder<Url> urls) => _$this._urls = urls;

  int _startYear;
  int get startYear => _$this._startYear;
  set startYear(int startYear) => _$this._startYear = startYear;

  int _endYear;
  int get endYear => _$this._endYear;
  set endYear(int endYear) => _$this._endYear = endYear;

  String _rating;
  String get rating => _$this._rating;
  set rating(String rating) => _$this._rating = rating;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _modified;
  String get modified => _$this._modified;
  set modified(String modified) => _$this._modified = modified;

  PictureBuilder _thumbnail;
  PictureBuilder get thumbnail => _$this._thumbnail ??= new PictureBuilder();
  set thumbnail(PictureBuilder thumbnail) => _$this._thumbnail = thumbnail;

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

  ComicListBuilder _comics;
  ComicListBuilder get comics => _$this._comics ??= new ComicListBuilder();
  set comics(ComicListBuilder comics) => _$this._comics = comics;

  EventListBuilder _events;
  EventListBuilder get events => _$this._events ??= new EventListBuilder();
  set events(EventListBuilder events) => _$this._events = events;

  SeriesSummaryBuilder _next;
  SeriesSummaryBuilder get next => _$this._next ??= new SeriesSummaryBuilder();
  set next(SeriesSummaryBuilder next) => _$this._next = next;

  SeriesSummaryBuilder _previous;
  SeriesSummaryBuilder get previous =>
      _$this._previous ??= new SeriesSummaryBuilder();
  set previous(SeriesSummaryBuilder previous) => _$this._previous = previous;

  SeriesBuilder();

  SeriesBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _resourceURI = _$v.resourceURI;
      _urls = _$v.urls?.toBuilder();
      _startYear = _$v.startYear;
      _endYear = _$v.endYear;
      _rating = _$v.rating;
      _type = _$v.type;
      _modified = _$v.modified;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _creators = _$v.creators?.toBuilder();
      _characters = _$v.characters?.toBuilder();
      _stories = _$v.stories?.toBuilder();
      _comics = _$v.comics?.toBuilder();
      _events = _$v.events?.toBuilder();
      _next = _$v.next?.toBuilder();
      _previous = _$v.previous?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Series other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Series;
  }

  @override
  void update(void updates(SeriesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Series build() {
    _$Series _$result;
    try {
      _$result = _$v ??
          new _$Series._(
              id: id,
              title: title,
              description: description,
              resourceURI: resourceURI,
              urls: urls.build(),
              startYear: startYear,
              endYear: endYear,
              rating: rating,
              type: type,
              modified: modified,
              thumbnail: thumbnail.build(),
              creators: creators.build(),
              characters: characters.build(),
              stories: stories.build(),
              comics: comics.build(),
              events: events.build(),
              next: _next?.build(),
              previous: _previous?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'urls';
        urls.build();

        _$failedField = 'thumbnail';
        thumbnail.build();
        _$failedField = 'creators';
        creators.build();
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'stories';
        stories.build();
        _$failedField = 'comics';
        comics.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'next';
        _next?.build();
        _$failedField = 'previous';
        _previous?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Series', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
