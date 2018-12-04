import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/page_card/page_card_list.dart';

import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class CharactersPage extends StatefulWidget {
  @override
  _CharactersPageState createState() {
    return new _CharactersPageState();
  }
}

class _CharactersPageState extends State<CharactersPage> {
  SearchBar searchBar;

  AppBar buildAppBar(BuildContext context) {
    return buildPageAppBar(
        context,
        MarvelLocalizations.of(context).charactersTitle.toUpperCase(),
        searchBar,
        ScreenProvider.of(context).favouriteCharactersBloc.itemCount,
        AppRoutes.favouriteCharacters);
  }

  void onSubmitted(String value) {
    print('onSubmitted: $value');

    var coreProvider = ScreenProvider.of(context);
    coreProvider.charactersBloc.search.add(value);
  }

  _CharactersPageState() {
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
    setState(() {});
    var coreProvider = ScreenProvider.of(context);
    coreProvider.charactersBloc.coreRepository.screenUri =
        coreProvider.screenUri.value;

    print('coreProvider.screenUri.value: ${coreProvider.screenUri.value}');

    return Scaffold(
      appBar: searchBar.build(context),
      body: PageCardList<Character>(
        //slice: coreProvider.charactersBloc.slice,
        corePagedBloc: coreProvider.charactersBloc,
        corePageBloc: coreProvider.favouriteCharactersBloc,
      ),
    );
  }
}
