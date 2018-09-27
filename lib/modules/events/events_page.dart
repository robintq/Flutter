import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/events/event.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() {
    return new _EventsPageState();
  }
}

class _EventsPageState extends State<EventsPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).eventsTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteEventsBloc.itemCount,
        AppRoutes.favouriteEvents);
  }

  void onSubmitted(String value) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.eventsBloc.search.add(value);
  }

  _EventsPageState() {
    searchBar = new SearchBar(
      inBar: true,
      buildDefaultAppBar: buildAppBar,
      setState: setState,
      onSubmitted: onSubmitted,
    );
  }
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.eventsBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Event>(
        corePagedBloc: coreProvider.eventsBloc,
        corePageBloc: coreProvider.favouriteEventsBloc,
      ),
    );
  }
}
