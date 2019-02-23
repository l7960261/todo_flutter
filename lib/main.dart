import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/containers/home.dart';
import 'package:todo_flutter/containers/second.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/reducers/app_state_reducer.dart';

void main() {
  Store<AppState> store = Store<AppState>(appReducer,
      initialState: AppState(main: MainPageState(), auth: AuthState()));
  runApp(ReduxApp(store: store));
}

class ReduxApp extends StatelessWidget {
  final Store<AppState> store;

  ReduxApp({this.store});

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: Colors.blue),
            routes: {
              '/': (context) {
                return Home();
              },
              '/second': (context) {
                return Second();
              }
            }));
  }
}
