import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/creators/creator.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class CreatorsPage extends StatefulWidget {
  @override
  _CreatorsPageState createState() {
    return new _CreatorsPageState();
  }
}

class _CreatorsPageState extends State<CreatorsPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).creatorsTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteCreatorsBloc.itemCount,
        AppRoutes.favouriteCreators);
  }

  void onSubmitted(String value) {
    var coreProvider = ScreenProvider.of(context);
    coreProvider.creatorsBloc.search.add(value);
  }

  _CreatorsPageState() {
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
    coreProvider.creatorsBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Creator>(
        corePagedBloc: coreProvider.creatorsBloc,
        corePageBloc: coreProvider.favouriteCreatorsBloc,
      ),
    );
  }
}
