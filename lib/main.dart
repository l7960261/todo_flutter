import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/containers/home.dart';
import 'package:todo_flutter/containers/login.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/splash_screen.dart';
import 'package:todo_flutter/reducers/app_state_reducer.dart';
import 'package:todo_flutter/routes.dart';

void main() async {
  final store = Store<AppState>(appReducer,
      initialState: AppState(home: HomePageState(), auth: AuthState()),
      middleware: createMiddleware());

  runApp(ReduxApp(store: store));
}

List<Middleware<AppState>> createMiddleware() {
  return [
    TypedMiddleware<AppState, IncreaseAction>(_increaseMiddleware()),
    TypedMiddleware<AppState, LoginSuccessAction>(_loadUserInfo()),
  ];
}

Middleware<AppState> _increaseMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_increaseMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_increaseMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _loadUserInfo() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_loadUserInfo 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_loadUserInfo 結束');
    print('AppState: ${store.state}');
  };
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
                        builder: (_) => SplashScreen(state: store.state.auth),
                        settings: settings);
                  case AppRoutes.home:
                    return NoTransitionRoute(
                        builder: (_) => Home(), settings: settings);
                  case AppRoutes.login:
                    return NoTransitionRoute(
                        builder: (_) => Login(), settings: settings);
                  default:
                    return null;
                }
              });
        }));
  }
}
