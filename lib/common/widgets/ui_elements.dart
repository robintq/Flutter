import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:marvel/common/models/card_model.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/models/comics/comic.dart';
import 'package:marvel/common/models/creators/creator.dart';
import 'package:marvel/common/models/events/event.dart';

import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/models/series/series.dart';
import 'package:marvel/common/models/stories/story.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/utils/converter.dart';
import 'package:marvel/common/widgets/favourites_button.dart';
import 'package:marvel/common/widgets/flutter_search_bar/flutter_search_bar.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/src/routes.dart';
import 'package:rxdart/rxdart.dart';
// import 'package:random_pk/random_pk.dart';

List<Widget> buildScreenCards(Function callbackFunc) {
  List<Widget> cards = [];
  Screen.values.forEach((screen) {
    cards.add(buildScreenCard(screen, callbackFunc));
  });
  return cards;
}

Widget buildScreenCard(Screen screen, Function callbackFunc) {
  return GestureDetector(
    onTap: () {
      callbackFunc(screen);
    },
    child: ClipPath(
      clipper: ScreenCardClipper(),
      child: Container(
        margin: EdgeInsets.only(bottom: 20.0),
        height: 80.0,
        color: Color(themeColor),
        child: new Center(
          child: Text(
            EnumConvert.getEnumValue(screen.toString()).toUpperCase(),
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}

class ScreenCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.moveTo(30.0, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width - 30, size.height);
    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// CardModel getCardModelByType(
//     Type classType, dynamic coreItemModel, String imageUrl) {
//   CardModel cardModel;
//   switch (classType) {
//     case Character:
//       cardModel =
//           CardModel(coreItemModel.name, coreItemModel.description, imageUrl);
//       break;
//     case Comic:
//       cardModel =
//           CardModel(coreItemModel.title, coreItemModel.description, imageUrl);
//       break;
//     case Creator:
//       cardModel =
//           CardModel(coreItemModel.name, coreItemModel.description, imageUrl);
//       break;
//     case Event:
//       cardModel =
//           CardModel(coreItemModel.name, coreItemModel.description, imageUrl);
//       break;
//     case Series:
//       cardModel =
//           CardModel(coreItemModel.name, coreItemModel.description, imageUrl);
//       break;
//     case Story:
//       cardModel =
//           CardModel(coreItemModel.name, coreItemModel.description, imageUrl);
//       break;
//   }
//   print('imageUrl: ${cardModel.imageUrl}}');
//   return cardModel;
// }

String getItemDetailRouteByType(Type classType, dynamic id) {
  String itemDetailRoute = '';
  switch (classType) {
    case Character:
      itemDetailRoute = '${AppRoutes.characterDetails}';
      break;
    case Comic:
      itemDetailRoute = '${AppRoutes.comicDetails}';
      break;
    case Creator:
      itemDetailRoute = '${AppRoutes.creatorDetails}';
      break;
    case Event:
      itemDetailRoute = '${AppRoutes.eventDetails}';
      break;
    case Series:
      itemDetailRoute = '${AppRoutes.seriesDetails}';
      break;
    case Story:
      itemDetailRoute = '${AppRoutes.storyDetails}';
      break;
  }
  itemDetailRoute += '/$id';
  print('itemDetailRoute: $itemDetailRoute');
  return itemDetailRoute;
}

List<Screen> classTypeToScreen(Type classType) {
  List<Screen> screens = [];
  switch (classType) {
    case Character:
      screens.add(Screen.Characters);
      screens.add(Screen.Creators);
      break;
    case Comic:
      screens.add(Screen.Comics);
      break;
    case Creator:
      screens.add(Screen.Characters);
      screens.add(Screen.Creators);
      break;
    case Event:
      screens.add(Screen.Events);
      break;
    case Series:
      screens.add(Screen.Series);
      break;
    case Story:
      screens.add(Screen.Stories);
      break;
  }
  return screens;
}

List<Widget> buildItemDetailLinkList(
    Type classType, ScreenUri screenUri, BuildContext context) {
  print('buildItemDetailLinkList.classType: $classType');
  final coreProvider = ScreenProvider.of(context);
  VoidCallback action;
  List<Screen> dontShowScreens = classTypeToScreen(classType);
  List<Widget> linkItems = [];
  Screen.values.forEach((screen) {
    if (!dontShowScreens.contains(screen)) {
      switch (screen) {
        case Screen.Characters:
          action = () {
            coreProvider.screenUri.add(screenUri.charactersUri);
            Navigator.pushNamed(
              context,
              AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
        case Screen.Comics:
          action = () {
            coreProvider.screenUri.add(screenUri.comicsUri);
            Navigator.pushNamed(
              context,
              AppRoutes.characterComics,
              // AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
        case Screen.Creators:
          action = () {
            coreProvider.screenUri.add(screenUri.creatorsUri);
            Navigator.pushNamed(
              context,
              AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
        case Screen.Events:
          action = () {
            coreProvider.screenUri.add(screenUri.eventsUri);
            Navigator.pushNamed(
              context,
              AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
        case Screen.Series:
          action = () {
            coreProvider.screenUri.add(screenUri.seriesUri);
            Navigator.pushNamed(
              context,
              AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
        case Screen.Stories:
          action = () {
            coreProvider.screenUri.add(screenUri.storiesUri);
            Navigator.pushNamed(
              context,
              AppRoutes.getRouteByScreen(screen),
            );
          };
          break;
      }
      linkItems.add(
        buildItemDetailLinkItem(
          EnumConvert.getEnumValue(screen.toString()),
          getScreenIcon(screen),
          action,
        ),
      );
    }
  });
  return linkItems;
}

Widget buildItemDetailLinkItem(
    String title, IconData iconData, VoidCallback action) {
  final textStyle = TextStyle(
      color: cardTextColor, fontSize: 18.0, fontWeight: FontWeight.w900);

  return ClipPath(
    clipper: ItemDetailLinkClipper(),
    child: Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0, top: 5.0),
      color: Color(themeColor),
      child: InkWell(
        onTap: action,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 35.0,
              height: 35.0,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Color(themeColorBk),
                borderRadius: BorderRadius.circular(5.0),
              ),
              alignment: Alignment.center,
              child: Icon(iconData, color: iconColor, size: 24.0),
            ),
            Expanded(child: Text(title, style: textStyle)),
            IconButton(
                icon: Icon(Icons.chevron_right, color: iconColor),
                onPressed: action)
          ],
        ),
      ),
    ),
  );
}

class ItemDetailLinkClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(size.width - 30, 0.0);
    path.lineTo(size.width, size.height / 2 - 5);
    path.lineTo(size.width - 40, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

var picBoxDecorationLinearGradient = const BoxDecoration(
  gradient: LinearGradient(
    colors: <Color>[
      Color(themeColor99),
      Color(themeColorBk),
    ],
    stops: [
      0.0,
      0.8,
    ],
    begin: const FractionalOffset(0.0, 0.0),
    end: const FractionalOffset(0.0, 1.0),
  ),
);

Decoration buildBoxDecorationImage(imageUrl) {
  return BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        imageUrl,
      ),
      fit: BoxFit.contain,
      alignment: Alignment.topCenter,
    ),
  );
}

Widget createCircleBadge(IconData iconData, Color color) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: CircleAvatar(
      backgroundColor: color,
      child: Icon(
        iconData,
        color: Colors.white,
        size: 16.0,
      ),
      radius: 16.0,
    ),
  );
}

Widget buildName(TextTheme textTheme, String nameText) {
  var followerStyle = textTheme.subhead.copyWith(color: Colors.white);
  // const Color(0xBBFFFFFF)

  return Text(
    nameText,
    style: followerStyle.copyWith(fontSize: 45.0, fontWeight: FontWeight.bold),
  );
}

Widget buildDescription(TextTheme textTheme, String descriptionText) {
  return Text(
    // descriptionText +
    //     descriptionText +
    //     descriptionText +
    descriptionText,
    style: textTheme.body1.copyWith(
      color: Colors.white, // Colors.white70,
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget buildBackButton() {
  return Positioned(
    top: 26.0,
    left: 4.0,
    child: BackButton(color: Colors.white),
  );
}

AppBar buildPageAppBar(
    BuildContext context,
    String titleText,
    SearchBar searchBar,
    ValueObservable<int> itemCount,
    String FavouritePageRoute) {
  return AppBar(
    backgroundColor: Color(themeColor),
    // centerTitle: true,
    title: Row(
      children: <Widget>[
        Image.asset(
          'assets/images/logo-001.png',
          scale: 2.2,
        ),
        Text(
          titleText,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    ),
    actions: <Widget>[
      searchBar.getSearchAction(context),
      StreamBuilder<int>(
        stream: itemCount,
        initialData: itemCount.value,
        builder: (context, snapshot) => FavouritesButton(
              itemCount: snapshot.data,
              onPressed: () =>
                  AppRoutes.pushNamedRoute(context, FavouritePageRoute),
            ),
      ),
    ],
  );
}

AppBar buildFavouritePageAppBar(String titleText) {
  return AppBar(
    backgroundColor: Color(themeColor),
    centerTitle: true,
    title: Row(
      children: <Widget>[
        Image.asset(
          'assets/images/logo-001.png',
          scale: 2.2,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
        ),
        Text(
          titleText,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    ),
  );
}

Widget RenderFavouriteIcon(
    GestureTapCallback onFavTap, bool isRenderStar, bool isInFavourite) {
  return isRenderStar
      ? GestureDetector(
          onTap: onFavTap,
          child: Icon(
            isInFavourite ? Icons.star : Icons.star_border,
            color: cardTextColor,
          ),
        )
      : GestureDetector(
          onTap: onFavTap,
          child: Icon(
            Icons.remove_circle,
            color: cardTextColor,
          ),
        );
  // IconButton(
  //   onPressed: widget.onTap,
  //   icon: Icon(
  //     isInFavouriteCharacters
  //         ? Icons.star
  //         : Icons.star_border,
  //     color: Colors.redAccent,
  //   ),
  // ),
}

Widget loadingView() {
  return SpinKitWave(
    color: Colors.white,
  );
}

Widget emptyView(BuildContext context, [String text = 'Empty']) {
  return Center(child: Text(text, style: Theme.of(context).textTheme.display1));
}
