// GENERATED CODE - DO NOT MODIFY BY HAND

part of event;

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

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable serialize(Serializers serializers, Event object,
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
      'series',
      serializers.serialize(object.series,
          specifiedType: const FullType(SeriesList)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.start != null) {
      result
        ..add('start')
        ..add(serializers.serialize(object.start,
            specifiedType: const FullType(String)));
    }
    if (object.end != null) {
      result
        ..add('end')
        ..add(serializers.serialize(object.end,
            specifiedType: const FullType(String)));
    }
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(EventSummary)));
    }
    if (object.previous != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(object.previous,
            specifiedType: const FullType(EventSummary)));
    }

    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

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
        case 'modified':
          result.modified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'end':
          result.end = serializers.deserialize(value,
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
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesList)) as SeriesList);
          break;
        case 'next':
          result.next.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventSummary)) as EventSummary);
          break;
        case 'previous':
          result.previous.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventSummary)) as EventSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
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
  final String modified;
  @override
  final String start;
  @override
  final String end;
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
  final SeriesList series;
  @override
  final EventSummary next;
  @override
  final EventSummary previous;

  factory _$Event([void updates(EventBuilder b)]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.urls,
      this.modified,
      this.start,
      this.end,
      this.thumbnail,
      this.creators,
      this.characters,
      this.stories,
      this.comics,
      this.series,
      this.next,
      this.previous})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Event', 'id');
    if (title == null) throw new BuiltValueNullFieldError('Event', 'title');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Event', 'resourceURI');
    if (urls == null) throw new BuiltValueNullFieldError('Event', 'urls');
    if (modified == null)
      throw new BuiltValueNullFieldError('Event', 'modified');
    if (thumbnail == null)
      throw new BuiltValueNullFieldError('Event', 'thumbnail');
    if (creators == null)
      throw new BuiltValueNullFieldError('Event', 'creators');
    if (characters == null)
      throw new BuiltValueNullFieldError('Event', 'characters');
    if (stories == null) throw new BuiltValueNullFieldError('Event', 'stories');
    if (comics == null) throw new BuiltValueNullFieldError('Event', 'comics');
    if (series == null) throw new BuiltValueNullFieldError('Event', 'series');
  }

  @override
  Event rebuild(void updates(EventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        resourceURI == other.resourceURI &&
        urls == other.urls &&
        modified == other.modified &&
        start == other.start &&
        end == other.end &&
        thumbnail == other.thumbnail &&
        creators == other.creators &&
        characters == other.characters &&
        stories == other.stories &&
        comics == other.comics &&
        series == other.series &&
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
                                                                $jc(0,
                                                                    id.hashCode),
                                                                title.hashCode),
                                                            description.hashCode),
                                                        resourceURI.hashCode),
                                                    urls.hashCode),
                                                modified.hashCode),
                                            start.hashCode),
                                        end.hashCode),
                                    thumbnail.hashCode),
                                creators.hashCode),
                            characters.hashCode),
                        stories.hashCode),
                    comics.hashCode),
                series.hashCode),
            next.hashCode),
        previous.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('resourceURI', resourceURI)
          ..add('urls', urls)
          ..add('modified', modified)
          ..add('start', start)
          ..add('end', end)
          ..add('thumbnail', thumbnail)
          ..add('creators', creators)
          ..add('characters', characters)
          ..add('stories', stories)
          ..add('comics', comics)
          ..add('series', series)
          ..add('next', next)
          ..add('previous', previous))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

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

  String _modified;
  String get modified => _$this._modified;
  set modified(String modified) => _$this._modified = modified;

  String _start;
  String get start => _$this._start;
  set start(String start) => _$this._start = start;

  String _end;
  String get end => _$this._end;
  set end(String end) => _$this._end = end;

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

  SeriesListBuilder _series;
  SeriesListBuilder get series => _$this._series ??= new SeriesListBuilder();
  set series(SeriesListBuilder series) => _$this._series = series;

  EventSummaryBuilder _next;
  EventSummaryBuilder get next => _$this._next ??= new EventSummaryBuilder();
  set next(EventSummaryBuilder next) => _$this._next = next;

  EventSummaryBuilder _previous;
  EventSummaryBuilder get previous =>
      _$this._previous ??= new EventSummaryBuilder();
  set previous(EventSummaryBuilder previous) => _$this._previous = previous;

  EventBuilder();

  EventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _resourceURI = _$v.resourceURI;
      _urls = _$v.urls?.toBuilder();
      _modified = _$v.modified;
      _start = _$v.start;
      _end = _$v.end;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _creators = _$v.creators?.toBuilder();
      _characters = _$v.characters?.toBuilder();
      _stories = _$v.stories?.toBuilder();
      _comics = _$v.comics?.toBuilder();
      _series = _$v.series?.toBuilder();
      _next = _$v.next?.toBuilder();
      _previous = _$v.previous?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Event;
  }

  @override
  void update(void updates(EventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              id: id,
              title: title,
              description: description,
              resourceURI: resourceURI,
              urls: urls.build(),
              modified: modified,
              start: start,
              end: end,
              thumbnail: thumbnail.build(),
              creators: creators.build(),
              characters: characters.build(),
              stories: stories.build(),
              comics: comics.build(),
              series: series.build(),
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
        _$failedField = 'series';
        series.build();
        _$failedField = 'next';
        _next?.build();
        _$failedField = 'previous';
        _previous?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
