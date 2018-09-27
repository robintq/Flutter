import 'package:flutter/material.dart';

final int timeStamp = DateTime.now().millisecondsSinceEpoch;

enum Screen { Characters, Comics, Creators, Events, Series, Stories }

IconData getScreenIcon(Screen screen) {
  IconData iconData;

  switch (screen) {
    case Screen.Characters:
      iconData = Icons.recent_actors;
      break;
    case Screen.Comics:
      iconData = Icons.import_contacts;
      break;
    case Screen.Creators:
      iconData = Icons.supervisor_account;
      break;
    case Screen.Events:
      iconData = Icons.event_available;
      break;
    case Screen.Series:
      iconData = Icons.burst_mode;
      break;
    case Screen.Stories:
      iconData = Icons.library_books;
      break;
  }

  return iconData;
}

enum ImageVariant {
  portrait_small, // 	50x75px
  portrait_medium, // 	100x150px
  portrait_xlarge, // 	150x225px
  portrait_fantastic, // 	168x252px
  portrait_uncanny, // 	300x450px
  portrait_incredible, // 	216x324px
  standard_small, // 	65x45px
  standard_medium, // 	100x100px
  standard_large, // 	140x140px
  standard_xlarge, // 	200x200px
  standard_fantastic, // 	250x250px
  standard_amazing, // 	180x180px
  landscape_small, // 	120x90px
  landscape_medium, // 	175x130px
  landscape_large, // 	190x140px
  landscape_xlarge, // 	270x200px
  landscape_amazing, // 	250x156px
  landscape_incredible, // 	464x261px
  detail, // 	full image, constrained to 500px wide
  full, //-size image 	no variant descriptor
}
