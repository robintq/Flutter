import 'package:flutter/material.dart';
import 'package:marvel/common/models/marvel_model.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/common/widgets/ui_elements.dart';
import 'package:marvel/src/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo-001.png'),
        centerTitle: true,
        backgroundColor: Color(themeColor),
      ),
      body: Column(
        children: <Widget>[
          ScreenCards(),
        ],
      ),
    );
  }
}

class ScreenCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void marvelCardOnTap(Screen screen) {
      AppRoutes.pushNamedRoute(context, AppRoutes.getRouteByScreen(screen));
    }

    return Expanded(
      child: Container(
        color: Color(themeColorBk),
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: buildScreenCards(marvelCardOnTap),
        ),
      ),
    );
  }
}
