import 'package:flutter/material.dart';
import 'package:marvel/common/models/characters/character.dart';
import 'package:marvel/common/models/comics/comic.dart';
import 'package:marvel/common/models/creators/creator.dart';
import 'package:marvel/common/models/events/event.dart';
import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/models/series/series.dart';
import 'package:marvel/common/models/stories/story.dart';
import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/widgets/page_card/page_card_item_details_bloc.dart';
import 'package:marvel/core/models/core_item_addition_model.dart';
import 'package:marvel/modules/characters/characters_page.dart';
import 'package:marvel/modules/characters/favourite_characters_page.dart';
import 'package:marvel/modules/comics/comics_page.dart';
import 'package:marvel/modules/comics/favourite_comics_page.dart';
import 'package:marvel/modules/creators/creators_page.dart';
import 'package:marvel/modules/creators/favourite_creators_page.dart';
import 'package:marvel/modules/events/events_page.dart';
import 'package:marvel/modules/events/favourite_events_page.dart';
import 'package:marvel/modules/home_page.dart';
import 'package:marvel/modules/series/favourite_series_page.dart';
import 'package:marvel/modules/series/series_page.dart';
import 'package:marvel/modules/stories/favourite_stories_page.dart';
import 'package:marvel/modules/stories/stories_page.dart';

class AppRoutes {
  static const home = "/";

  static const characters = "/characters_page";
  static const favouriteCharacters = "/favourite_characters_page";
  static const characterDetails = "/character_details";
  static const characterComics = "/character_comics";

  static const comics = "/comics_page";
  static const favouriteComics = "/favourite_comics_page";
  static const comicDetails = "/comic_details";

  static const creators = "/creators_page";
  static const favouriteCreators = "/favourite_creators_page";
  static const creatorDetails = "/creator_details";

  static const events = "/events_page";
  static const favouriteEvents = "/favourite_events_page";
  static const eventDetails = "/event_details";

  static const series = "/series_page";
  static const favouriteSeries = "/favourite_series_page";
  static const seriesDetails = "/series_details";

  static const stories = "/stories_page";
  static const favouriteStories = "/favourite_stories_page";
  static const storyDetails = "/story_details";

  static String getRouteByScreen(Screen screen) {
    print('getRouteByScreen screen: $screen');
    var route = home;
    switch (screen) {
      case Screen.Characters:
        route = characters;
        break;
      case Screen.Comics:
        route = comics;
        break;
      case Screen.Creators:
        route = creators;
        break;
      case Screen.Events:
        route = events;
        break;
      case Screen.Series:
        route = series;
        break;
      case Screen.Stories:
        route = stories;
        break;
      default:
        route = home;
    }
    return route;
  }

  static void materialPageRoute(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) {
          return widget;
        },
      ),
    );
  }

  static void pushNamedRoute(BuildContext context, String route) {
    Navigator.of(context).pushNamed(route);
  }

  static Route routes(RouteSettings settings) {
    // print('settings.name: ${settings.name}');

    var route = MaterialPageRoute(builder: (BuildContext context) {
      // charactersBloc.fetchCharacters();
      return HomePage();
    });
    var routeName = settings.name;
    switch (routeName) {
      case AppRoutes.home:
        break;
      case AppRoutes.characters:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return CharactersPage();
        });
        break;
      case AppRoutes.favouriteCharacters:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteCharactersPage();
        });
        break;
      case AppRoutes.comics:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return ComicsPage();
        });
        break;
      case AppRoutes.favouriteComics:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteComicsPage();
        });
        break;
      case AppRoutes.creators:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return CreatorsPage();
        });
        break;
      case AppRoutes.favouriteCreators:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteCreatorsPage();
        });
        break;
      case AppRoutes.events:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return EventsPage();
        });
        break;
      case AppRoutes.favouriteEvents:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteEventsPage();
        });
        break;
      case AppRoutes.series:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return SeriesPage();
        });
        break;
      case AppRoutes.favouriteSeries:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteSeriesPage();
        });
        break;
      case AppRoutes.stories:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return StoriesPage();
        });
        break;
      case AppRoutes.favouriteStories:
        route = MaterialPageRoute(builder: (BuildContext context) {
          return FavouriteStoriesPage();
        });
        break;
      default:
        if (routeName.contains(AppRoutes.characterDetails)) {
          // var index = routeName.lastIndexOf('/');
          // var itemId = int.parse(routeName.substring(index + 1));
          // print('itemId: $itemId');

          route = MaterialPageRoute(builder: (BuildContext context) {
            final coreProvider = ScreenProvider.of(context);
            final coreItemModel =
                coreProvider.coreItemBloc.coreItemModel; // as Character;
            // final coreItemModel =
            //     coreProvider.charactersBloc.slice.elementById(itemId);
            // print(coreItemModel);

            return PageCardItemDetailsBloc<Character>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteCharactersBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Character>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteCharactersBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.comicDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            var coreProvider = ScreenProvider.of(context);
            final coreItemModel = coreProvider.coreItemBloc.coreItemModel;

            return PageCardItemDetailsBloc<Comic>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteComicsBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Comic>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteComicsBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.creatorDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            var coreProvider = ScreenProvider.of(context);
            final coreItemModel = coreProvider.coreItemBloc.coreItemModel;

            return PageCardItemDetailsBloc<Creator>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteCreatorsBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Creator>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteCreatorsBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.eventDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            var coreProvider = ScreenProvider.of(context);
            final coreItemModel = coreProvider.coreItemBloc.coreItemModel;

            return PageCardItemDetailsBloc<Event>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteEventsBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Event>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteEventsBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.seriesDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            var coreProvider = ScreenProvider.of(context);
            final coreItemModel = coreProvider.coreItemBloc.coreItemModel;

            return PageCardItemDetailsBloc<Series>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteSeriesBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Series>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteSeriesBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.storyDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            var coreProvider = ScreenProvider.of(context);
            final coreItemModel = coreProvider.coreItemBloc.coreItemModel;

            return PageCardItemDetailsBloc<Story>(
              coreItemModel: coreItemModel,
              onTap: () => coreProvider
                  .favouriteStoriesBloc.coreItemAdditionModel
                  .add(CoreItemAdditionModel<Story>(coreItemModel)),
              coreViewItemModels:
                  coreProvider.favouriteStoriesBloc.coreViewItemModels,
            );
          });
        } else if (routeName.contains(AppRoutes.characterComics)) {
          print('AppRoutes.characterComics: ${AppRoutes.characterComics}');
          route = MaterialPageRoute(builder: (BuildContext context) {
            return ComicsPage();
          });
        }
    }
    return route;
  }
}
