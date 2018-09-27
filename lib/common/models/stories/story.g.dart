// GENERATED CODE - DO NOT MODIFY BY HAND

part of story;

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

Serializer<Story> _$storySerializer = new _$StorySerializer();

class _$StorySerializer implements StructuredSerializer<Story> {
  @override
  final Iterable<Type> types = const [Story, _$Story];
  @override
  final String wireName = 'Story';

  @override
  Iterable serialize(Serializers serializers, Story object,
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
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'modified',
      serializers.serialize(object.modified,
          specifiedType: const FullType(String)),
      'creators',
      serializers.serialize(object.creators,
          specifiedType: const FullType(CreatorList)),
      'characters',
      serializers.serialize(object.characters,
          specifiedType: const FullType(CharacterList)),
      'series',
      serializers.serialize(object.series,
          specifiedType: const FullType(SeriesList)),
      'comics',
      serializers.serialize(object.comics,
          specifiedType: const FullType(ComicList)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(EventList)),
      'originalIssue',
      serializers.serialize(object.originalIssue,
          specifiedType: const FullType(ComicSummary)),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.thumbnail != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(object.thumbnail,
            specifiedType: const FullType(Picture)));
    }

    return result;
  }

  @override
  Story deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoryBuilder();

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
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(SeriesList)) as SeriesList);
          break;
        case 'comics':
          result.comics.replace(serializers.deserialize(value,
              specifiedType: const FullType(ComicList)) as ComicList);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventList)) as EventList);
          break;
        case 'originalIssue':
          result.originalIssue.replace(serializers.deserialize(value,
              specifiedType: const FullType(ComicSummary)) as ComicSummary);
          break;
      }
    }

    return result.build();
  }
}

class _$Story extends Story {
  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String resourceURI;
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
  final SeriesList series;
  @override
  final ComicList comics;
  @override
  final EventList events;
  @override
  final ComicSummary originalIssue;

  factory _$Story([void updates(StoryBuilder b)]) =>
      (new StoryBuilder()..update(updates)).build();

  _$Story._(
      {this.id,
      this.title,
      this.description,
      this.resourceURI,
      this.type,
      this.modified,
      this.thumbnail,
      this.creators,
      this.characters,
      this.series,
      this.comics,
      this.events,
      this.originalIssue})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Story', 'id');
    if (title == null) throw new BuiltValueNullFieldError('Story', 'title');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Story', 'resourceURI');
    if (type == null) throw new BuiltValueNullFieldError('Story', 'type');
    if (modified == null)
      throw new BuiltValueNullFieldError('Story', 'modified');
    if (creators == null)
      throw new BuiltValueNullFieldError('Story', 'creators');
    if (characters == null)
      throw new BuiltValueNullFieldError('Story', 'characters');
    if (series == null) throw new BuiltValueNullFieldError('Story', 'series');
    if (comics == null) throw new BuiltValueNullFieldError('Story', 'comics');
    if (events == null) throw new BuiltValueNullFieldError('Story', 'events');
    if (originalIssue == null)
      throw new BuiltValueNullFieldError('Story', 'originalIssue');
  }

  @override
  Story rebuild(void updates(StoryBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryBuilder toBuilder() => new StoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Story &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        resourceURI == other.resourceURI &&
        type == other.type &&
        modified == other.modified &&
        thumbnail == other.thumbnail &&
        creators == other.creators &&
        characters == other.characters &&
        series == other.series &&
        comics == other.comics &&
        events == other.events &&
        originalIssue == other.originalIssue;
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
                                                $jc($jc(0, id.hashCode),
                                                    title.hashCode),
                                                description.hashCode),
                                            resourceURI.hashCode),
                                        type.hashCode),
                                    modified.hashCode),
                                thumbnail.hashCode),
                            creators.hashCode),
                        characters.hashCode),
                    series.hashCode),
                comics.hashCode),
            events.hashCode),
        originalIssue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Story')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('resourceURI', resourceURI)
          ..add('type', type)
          ..add('modified', modified)
          ..add('thumbnail', thumbnail)
          ..add('creators', creators)
          ..add('characters', characters)
          ..add('series', series)
          ..add('comics', comics)
          ..add('events', events)
          ..add('originalIssue', originalIssue))
        .toString();
  }
}

class StoryBuilder implements Builder<Story, StoryBuilder> {
  _$Story _$v;

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

  SeriesListBuilder _series;
  SeriesListBuilder get series => _$this._series ??= new SeriesListBuilder();
  set series(SeriesListBuilder series) => _$this._series = series;

  ComicListBuilder _comics;
  ComicListBuilder get comics => _$this._comics ??= new ComicListBuilder();
  set comics(ComicListBuilder comics) => _$this._comics = comics;

  EventListBuilder _events;
  EventListBuilder get events => _$this._events ??= new EventListBuilder();
  set events(EventListBuilder events) => _$this._events = events;

  ComicSummaryBuilder _originalIssue;
  ComicSummaryBuilder get originalIssue =>
      _$this._originalIssue ??= new ComicSummaryBuilder();
  set originalIssue(ComicSummaryBuilder originalIssue) =>
      _$this._originalIssue = originalIssue;

  StoryBuilder();

  StoryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _description = _$v.description;
      _resourceURI = _$v.resourceURI;
      _type = _$v.type;
      _modified = _$v.modified;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _creators = _$v.creators?.toBuilder();
      _characters = _$v.characters?.toBuilder();
      _series = _$v.series?.toBuilder();
      _comics = _$v.comics?.toBuilder();
      _events = _$v.events?.toBuilder();
      _originalIssue = _$v.originalIssue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Story other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Story;
  }

  @override
  void update(void updates(StoryBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Story build() {
    _$Story _$result;
    try {
      _$result = _$v ??
          new _$Story._(
              id: id,
              title: title,
              description: description,
              resourceURI: resourceURI,
              type: type,
              modified: modified,
              thumbnail: _thumbnail?.build(),
              creators: creators.build(),
              characters: characters.build(),
              series: series.build(),
              comics: comics.build(),
              events: events.build(),
              originalIssue: originalIssue.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnail';
        _thumbnail?.build();
        _$failedField = 'creators';
        creators.build();
        _$failedField = 'characters';
        characters.build();
        _$failedField = 'series';
        series.build();
        _$failedField = 'comics';
        comics.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'originalIssue';
        originalIssue.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Story', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
