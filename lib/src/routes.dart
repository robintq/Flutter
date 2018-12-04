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
import 'package:marvel/pages/characters/characters_page.dart';
import 'package:marvel/pages/characters/favourite_characters_page.dart';
import 'package:marvel/pages/comics/comics_page.dart';
import 'package:marvel/pages/comics/favourite_comics_page.dart';
import 'package:marvel/pages/creators/creators_page.dart';
import 'package:marvel/pages/creators/favourite_creators_page.dart';
import 'package:marvel/pages/events/events_page.dart';
import 'package:marvel/pages/events/favourite_events_page.dart';
import 'package:marvel/pages/home_page.dart';
import 'package:marvel/pages/series/favourite_series_page.dart';
import 'package:marvel/pages/series/series_page.dart';
import 'package:marvel/pages/stories/favourite_stories_page.dart';
import 'package:marvel/pages/stories/stories_page.dart';

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
            // final coreItemModel =
            //     coreProvider.charactersBloc.slice.elementById(itemId);
            // print(coreItemModel);

            return PageCardItemDetailsBloc<Character>(
                favouritesBloc:
                    ScreenProvider.of(context).favouriteCharactersBloc);
          });
        } else if (routeName.contains(AppRoutes.comicDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            return PageCardItemDetailsBloc<Comic>(
                favouritesBloc: ScreenProvider.of(context).favouriteComicsBloc);
          });
        } else if (routeName.contains(AppRoutes.creatorDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            return PageCardItemDetailsBloc<Creator>(
                favouritesBloc:
                    ScreenProvider.of(context).favouriteCreatorsBloc);
          });
        } else if (routeName.contains(AppRoutes.eventDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            return PageCardItemDetailsBloc<Event>(
                favouritesBloc: ScreenProvider.of(context).favouriteEventsBloc);
          });
        } else if (routeName.contains(AppRoutes.seriesDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            return PageCardItemDetailsBloc<Series>(
                favouritesBloc: ScreenProvider.of(context).favouriteSeriesBloc);
          });
        } else if (routeName.contains(AppRoutes.storyDetails)) {
          route = MaterialPageRoute(builder: (BuildContext context) {
            return PageCardItemDetailsBloc<Story>(
                favouritesBloc:
                    ScreenProvider.of(context).favouriteStoriesBloc);
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
