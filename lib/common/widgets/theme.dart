import 'package:flutter/material.dart';

const int themeColor00 = 0x00F0141E;
const int themeColor11 = 0x11F0141E;
const int themeColor22 = 0x22F0141E;
const int themeColor33 = 0x33F0141E;
const int themeColor44 = 0x44F0141E;
const int themeColor55 = 0x55F0141E;
const int themeColor66 = 0x66F0141E;
const int themeColor99 = 0x99F0141E;
const int themeColorBB = 0xBBF0141E;
const int themeColor = 0xFFF0141E;

const int themeColorBk1 = 0xFFe40f18;
const int themeColorBk2 = 0xFFd40e17;
const int themeColorBk3 = 0xFFc50d15;
const int themeColorBk4 = 0xFFb50c13;
const int themeColorBk5 = 0xFFa50b12;

const int themeColorBk = themeColorBk3;

const Color cardTextColor = Colors.white;
const Color iconColor = Colors.white;
const Color buttonColor = Colors.white;

/// The top-level theme of the whole app.
final appTheme = ThemeData(
  primarySwatch: Colors.red,
  primaryColor: Color(themeColor),
  accentColor: Color(themeColor),
  canvasColor: Color(themeColor),
  textTheme: TextTheme(
      display1: TextStyle(
    color: Colors.white,
  )),
  fontFamily: 'Marvel',
);

final linearGradient = const BoxDecoration(
  gradient: const LinearGradient(
    begin: FractionalOffset.bottomLeft,
    end: FractionalOffset.centerRight,
    colors: <Color>[
      const Color(themeColor11),
      const Color(themeColor00),
    ],
  ),
);
