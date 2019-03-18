import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/auth/auth_middleware.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/ui/app/home.dart';
import 'package:todo_flutter/ui/auth/login_vm.dart';
import 'package:todo_flutter/ui/splash_vm.dart';
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

  runApp(AppContainer(store: store));
}

class AppContainer extends StatelessWidget {
  final Store<AppState> store;

  AppContainer({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: StoreConnector<AppState, SystemState>(
            builder: (BuildContext context, systemSetting) {
          return ReduxApp(systemSetting);
        }, converter: (Store<AppState> store) {
          return store.state.systemState;
        }));
  }
}

class ReduxApp extends StatelessWidget {
  final SystemState systemSetting;

  ReduxApp(this.systemSetting);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        localizationsDelegates: [
          AppLocalizationsDelegate(
              newLocale: Locale(systemSetting.languageCode)),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('es', ''),
          const Locale('ja', '')
        ],
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
  }
}
