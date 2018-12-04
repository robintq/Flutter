import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/comics/comic.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class ComicsPage extends StatefulWidget {
  @override
  _ComicsPageState createState() {
    return new _ComicsPageState();
  }
}

class _ComicsPageState extends State<ComicsPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).comicsTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteComicsBloc.itemCount,
        AppRoutes.favouriteComics);
  }

  void onSubmitted(String value) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.comicsBloc.search.add(value);
  }

  _ComicsPageState() {
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
    coreProvider.comicsBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    print('coreProvider.screenUri.value: ${coreProvider.screenUri.value}');

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Comic>(
        corePagedBloc: coreProvider.comicsBloc,
        corePageBloc: coreProvider.favouriteComicsBloc,
      ),
    );
  }
}
