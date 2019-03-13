import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/auth/auth_middleware.dart';
import 'package:todo_flutter/ui/app/home.dart';
import 'package:todo_flutter/ui/auth/login.dart';
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
        ..addAll(createStoreAuthMiddleware()));

  runApp(ReduxApp(store: store));
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  ReduxApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: StoreBuilder(builder: (context, Store<AppState> store) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(primarySwatch: Colors.blue),
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
        }));
  }
}
