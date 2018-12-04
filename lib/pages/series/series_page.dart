import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/series/series.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class SeriesPage extends StatefulWidget {
  @override
  _SeriesPageState createState() {
    return new _SeriesPageState();
  }
}

class _SeriesPageState extends State<SeriesPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).seriesTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteSeriesBloc.itemCount,
        AppRoutes.favouriteSeries);
  }

  void onSubmitted(String value) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.seriesBloc.search.add(value);
  }

  _SeriesPageState() {
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
    coreProvider.seriesBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Series>(
        corePagedBloc: coreProvider.seriesBloc,
        corePageBloc: coreProvider.favouriteSeriesBloc,
      ),
    );
  }
}
