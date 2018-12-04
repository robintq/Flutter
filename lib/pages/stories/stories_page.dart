import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/stories/story.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class StoriesPage extends StatefulWidget {
  @override
  _StoriesPageState createState() {
    return new _StoriesPageState();
  }
}

class _StoriesPageState extends State<StoriesPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).storiesTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteStoriesBloc.itemCount,
        AppRoutes.favouriteStories);
  }

  void onSubmitted(String value) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.storiesBloc.search.add(value);
  }

  _StoriesPageState() {
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
    coreProvider.storiesBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Story>(
        corePagedBloc: coreProvider.storiesBloc,
        corePageBloc: coreProvider.favouriteStoriesBloc,
      ),
    );
  }
}
