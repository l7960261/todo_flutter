import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/redux/auth/auth_middleware.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_actions.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_middleware.dart';
import 'package:todo_flutter/redux/system/system_middleward.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/themes.dart';
import 'package:todo_flutter/ui/app/home.dart';
import 'package:todo_flutter/ui/auth/login_vm.dart';
import 'package:todo_flutter/ui/app/splash_vm.dart';
import 'package:todo_flutter/redux/app/app_middleware.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/app/app_reducer.dart';
import 'package:todo_flutter/routes.dart';

void main() async {
  await DotEnv().load('assets/.dev.env');

  runApp(ReduxApp());
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store = Store<AppState>(appReducer,
      initialState: AppState(),
      middleware: []
        ..addAll(createStorePersistenceMiddleware())
        ..addAll(createStoreAuthMiddleware())
        ..addAll(createStoreSystemMiddleware())
        ..addAll(createStoreDashboardMiddleware())
        ..addAll([LoggingMiddleware.printer()]));

  ReduxApp();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: StoreConnector<AppState, SystemState>(
          builder: (context, systemState) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: AppThemes.getStyle(systemState.curTheme),
                localizationsDelegates: [
                  AppLocalizationsDelegate(
                      newLocale: Locale(systemState.curLanguage)),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate
                ],
                supportedLocales:
                    kLanguages.map((String locale) => Locale(locale)).toList(),
                initialRoute: AppRoutes.splash,
                onGenerateRoute: (RouteSettings settings) {
                  switch (settings.name) {
                    case AppRoutes.splash:
                      return NoTransitionRoute(
                          builder: (_) => SplashScreen(), settings: settings);
                    case AppRoutes.home:
                      store.dispatch(LoadDashboard());
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
