import 'package:flutter/material.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/models/comics/comic.dart';
import 'package:marvel/common/models/creators/creator.dart';
import 'package:marvel/common/models/events/event.dart';
import 'package:marvel/common/models/series/series.dart';
import 'package:marvel/common/models/stories/story.dart';
import 'package:marvel/common/repositories/characters_repository.dart';
import 'package:marvel/common/repositories/comics_repository.dart';
import 'package:marvel/common/repositories/creators_repository.dart';
import 'package:marvel/common/repositories/events_repository.dart';
import 'package:marvel/common/repositories/series_repository.dart';
import 'package:marvel/common/repositories/stories_repository.dart';
import 'package:marvel/core/blocs/core_item_bloc.dart';
import 'package:marvel/core/blocs/core_page_bloc.dart';
import 'package:marvel/core/blocs/core_paged_bloc.dart';
import 'package:rxdart/rxdart.dart';

class ScreenProvider extends StatefulWidget {
  final _screenUri = BehaviorSubject<String>(seedValue: '');

  final _coreItemBloc = CoreItemBloc();
  get coreItemBloc => _coreItemBloc;

  final _charactersBloc = CorePagedBloc(CharactersRepository());
  CorePagedBloc get charactersBloc => _charactersBloc;

  final _favouriteCharactersBloc = CorePageBloc<Character>();
  CorePageBloc<Character> get favouriteCharactersBloc =>
      _favouriteCharactersBloc;

  final _comicsBloc = CorePagedBloc(ComicsRepository());
  CorePagedBloc get comicsBloc => _comicsBloc;

  final _favouriteComicsBloc = CorePageBloc<Comic>();
  CorePageBloc<Comic> get favouriteComicsBloc => _favouriteComicsBloc;

  final _creatorsBloc = CorePagedBloc(CreatorsRepository());
  CorePagedBloc get creatorsBloc => _creatorsBloc;

  final _favouriteCreatorsBloc = CorePageBloc<Creator>();
  CorePageBloc<Creator> get favouriteCreatorsBloc => _favouriteCreatorsBloc;

  final _eventsBloc = CorePagedBloc(EventsRepository());
  CorePagedBloc get eventsBloc => _eventsBloc;

  final _favouriteEventsBloc = CorePageBloc<Event>();
  CorePageBloc<Event> get favouriteEventsBloc => _favouriteEventsBloc;

  final _seriesBloc = CorePagedBloc(SeriesRepository());
  CorePagedBloc get seriesBloc => _seriesBloc;

  final _favouriteSeriesBloc = CorePageBloc<Series>();
  CorePageBloc<Series> get favouriteSeriesBloc => _favouriteSeriesBloc;

  final _storiesBloc = CorePagedBloc(StoriesRepository());
  CorePagedBloc get storiesBloc => _storiesBloc;

  final _favouriteStoriesBloc = CorePageBloc<Story>();
  CorePageBloc<Story> get favouriteStoriesBloc => _favouriteStoriesBloc;

  final Widget child;

  ScreenProvider({Key key, @required this.child}) : super(key: key);

  @override
  _ScreenProviderState createState() => _ScreenProviderState();

  static Type _typeOf<T>() => T;

  static _ScreenProvider of(BuildContext context) {
    final type = _typeOf<_ScreenProvider>();
    _ScreenProvider provider =
        context.ancestorInheritedElementForWidgetOfExactType(type)?.widget;
    return provider;
  }

  // static _ScreenProvider of([BuildContext context, bool rebuild = true]) {
  //   return rebuild
  //       ? (context.inheritFromWidgetOfExactType(_ScreenProvider)
  //           as _ScreenProvider)
  //       : (context.ancestorWidgetOfExactType(_ScreenProvider)
  //           as _ScreenProvider);
  // }
}

class _ScreenProviderState extends State<ScreenProvider> {
  @override
  Widget build(BuildContext context) {
    return _ScreenProvider(
        screenUri: widget._screenUri,
        coreItemBloc: widget.coreItemBloc,
        charactersBloc: widget.charactersBloc,
        favouriteCharactersBloc: widget.favouriteCharactersBloc,
        comicsBloc: widget.comicsBloc,
        favouriteComicsBloc: widget.favouriteComicsBloc,
        creatorsBloc: widget.creatorsBloc,
        favouriteCreatorsBloc: widget.favouriteCreatorsBloc,
        eventsBloc: widget.eventsBloc,
        favouriteEventsBloc: widget.favouriteEventsBloc,
        seriesBloc: widget.seriesBloc,
        favouriteSeriesBloc: widget.favouriteSeriesBloc,
        storiesBloc: widget.storiesBloc,
        favouriteStoriesBloc: widget.favouriteStoriesBloc,
        child: widget.child);
  }

  @override
  void dispose() {
    widget._screenUri.sink.close();

    print('ApplicationProvider: dispose()');
    widget.coreItemBloc.dispose();

    widget.charactersBloc.dispose();
    widget.favouriteCharactersBloc.dispose();

    widget.comicsBloc.dispose();
    widget.favouriteComicsBloc.dispose();

    widget.creatorsBloc.dispose();
    widget.favouriteCreatorsBloc.dispose();

    widget.eventsBloc.dispose();
    widget.favouriteEventsBloc.dispose();

    widget.seriesBloc.dispose();
    widget.favouriteSeriesBloc.dispose();

    widget.storiesBloc.dispose();
    widget.favouriteStoriesBloc.dispose();

    super.dispose();
  }
}

class _ScreenProvider extends InheritedWidget {
  final BehaviorSubject<String> screenUri;

  final CoreItemBloc coreItemBloc;

  final CorePagedBloc charactersBloc;
  final CorePageBloc<Character> favouriteCharactersBloc;

  final CorePagedBloc comicsBloc;
  final CorePageBloc<Comic> favouriteComicsBloc;

  final CorePagedBloc creatorsBloc;
  final CorePageBloc<Creator> favouriteCreatorsBloc;

  final CorePagedBloc eventsBloc;
  final CorePageBloc<Event> favouriteEventsBloc;

  final CorePagedBloc seriesBloc;
  final CorePageBloc<Series> favouriteSeriesBloc;

  final CorePagedBloc storiesBloc;
  final CorePageBloc<Story> favouriteStoriesBloc;

  _ScreenProvider({
    Key key,
    @required this.screenUri,
    @required this.coreItemBloc,
    @required this.charactersBloc,
    @required this.favouriteCharactersBloc,
    @required this.comicsBloc,
    @required this.favouriteComicsBloc,
    @required this.creatorsBloc,
    @required this.favouriteCreatorsBloc,
    @required this.eventsBloc,
    @required this.favouriteEventsBloc,
    @required this.seriesBloc,
    @required this.favouriteSeriesBloc,
    @required this.storiesBloc,
    @required this.favouriteStoriesBloc,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_ScreenProvider old) =>
      charactersBloc != old.charactersBloc ||
      favouriteCharactersBloc != old.favouriteCharactersBloc ||
      comicsBloc != old.comicsBloc ||
      favouriteComicsBloc != old.favouriteComicsBloc ||
      creatorsBloc != old.creatorsBloc ||
      favouriteCreatorsBloc != old.favouriteCreatorsBloc ||
      eventsBloc != old.eventsBloc ||
      favouriteEventsBloc != old.favouriteEventsBloc ||
      seriesBloc != old.seriesBloc ||
      favouriteSeriesBloc != old.favouriteSeriesBloc ||
      storiesBloc != old.storiesBloc ||
      favouriteStoriesBloc != old.favouriteStoriesBloc ||
      coreItemBloc != old.coreItemBloc;
}
