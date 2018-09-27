import 'package:flutter/material.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/page_card/page_card_item.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/core/models/core_item_view_model.dart';

class FavouriteCharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final coreProvider = ScreenProvider.of(context);
    return Scaffold(
      appBar: buildFavouritePageAppBar(
          MarvelLocalizations.of(context).charactersTitle.toUpperCase()),
      body: Container(
        padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
        color: Color(themeColor),
        child: StreamBuilder<List<CoreItemViewModel>>(
            stream: coreProvider.favouriteCharactersBloc.coreViewItemModels,
            builder: (context, snapshot) {
              if (snapshot.data?.isEmpty ?? true) {
                return emptyView(
                    context, MarvelLocalizations.of(context).addSomeText);
              }

              return ListView(
                  children: snapshot.data
                      .map((item) => PageCardItem<Character>(
                            coreItemModel: item.coreItemModel, // as Character,
                            corePageBloc: coreProvider.favouriteCharactersBloc,
                            isPageCardItemViewBloc: false,
                          ))
                      .toList());
            }),
      ),
    );
  }
}
