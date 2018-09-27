import 'package:flutter/material.dart';
import 'package:marvel/common/blocs/application_bloc.dart';
import 'package:marvel/common/localizations/localization.dart';
import 'package:marvel/common/providers/application_provider.dart';

import 'package:marvel/common/providers/screen_provider.dart';
import 'package:marvel/common/utils/history_limit.dart';
import 'package:marvel/common/widgets/theme.dart';
import 'package:marvel/src/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ApplicationProvider<ApplicationBloc>(
      bloc: ApplicationBloc(),
      child: ScreenProvider(
        child: MaterialApp(
          navigatorObservers: [HistoryLimit(10)],
          initialRoute: AppRoutes.home,
          onGenerateTitle: (BuildContext context) =>
              MarvelLocalizations.of(context).appTitle,
          theme: appTheme,
          localizationsDelegates: [
            const MarvelLocalizationsDelegate(),
          ],
          supportedLocales: [
            const Locale('en', ''),
            const Locale('es', ''),
          ],
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (RouteSettings settings) =>
              AppRoutes.routes(settings),
        ),
      ),
    );
  }
}
