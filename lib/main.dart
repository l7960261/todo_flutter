import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:todo_flutter/containers/home.dart';
import 'package:todo_flutter/containers/login.dart';
import 'package:todo_flutter/containers/splash.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/reducers/app_state_reducer.dart';
import 'package:todo_flutter/routes.dart';

void main() async {
  final persistor = Persistor<AppState>(
      storage: FlutterStorage(),
      serializer: JsonSerializer<AppState>(AppState.fromJson));
  final initialState = await persistor.load();
  final store =
      Store<AppState>(appReducer, initialState: initialState, middleware: [
    persistor.createMiddleware(),
    (Store<AppState> store, dynamic action, NextDispatcher next) async {
      print('自製中間件 (一) 開始');
      print('AppState: ${store.state}');

      next(action);

      print('自製中間件 (一) 結束');
      print('AppState: ${store.state}');
    }
  ]);

  runApp(ReduxApp(store: store));
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  ReduxApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: Colors.blue),
            initialRoute: AppRoutes.splash,
            routes: {
              AppRoutes.splash: (context) {
                return Splash();
              },
              AppRoutes.home: (context) {
                return Home();
              },
              AppRoutes.login: (context) {
                return Login();
              }
            }));
  }
}
