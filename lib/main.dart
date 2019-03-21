import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/auth/auth_middleware.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/utils/themes.dart';
import 'package:todo_flutter/ui/app/home.dart';
import 'package:todo_flutter/ui/auth/login_vm.dart';
import 'package:todo_flutter/ui/app/splash_vm.dart';
import 'package:todo_flutter/redux/app/app_middleware.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/app/app_reducer.dart';
import 'package:todo_flutter/routes.dart';

void main() async {
  final store = Store<AppState>(appReducer,
      initialState: AppState(),
      middleware: []
        ..addAll(createStorePersistenceMiddleware())
        ..addAll(createStoreAuthMiddleware())
        ..addAll([LoggingMiddleware.printer()]));

  runApp(ReduxApp(store: store));
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  ReduxApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: StoreConnector<AppState, SystemState>(
          builder: (context, systemState) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: AppThemes.getThemeData(systemState.curThemeKey),
                localizationsDelegates: [
                  AppLocalizationsDelegate(
                      newLocale: Locale(systemState.curLanguage),
                      availableLanguage: systemState.availableLanguage()),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate
                ],
                supportedLocales: systemState.languageMap
                    .map((item) => Locale(item.languageCode, item.countryCode))
                    .toList(),
                initialRoute: AppRoutes.splash,
                onGenerateRoute: (RouteSettings settings) {
                  switch (settings.name) {
                    case AppRoutes.splash:
                      return NoTransitionRoute(
                          builder: (_) => SplashScreen(), settings: settings);
                    case AppRoutes.home:
                      return NoTransitionRoute(
                          builder: (_) => HomeScreen(), settings: settings);
                    case AppRoutes.login:
                      return NoTransitionRoute(
                          builder: (_) => LoginScreen(), settings: settings);
                    default:
                      return null;
                  }
                });
          },
          converter: (store) {
            return store.state.systemState;
          },
        ));
  }
}
