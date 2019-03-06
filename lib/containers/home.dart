import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/home_screen.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        builder: (BuildContext context, AppState state) {
      return HomeScreen(
          title: 'Home',
          counter: state.homeState.counter,
          account: state.authState.account);
    }, converter: (Store<AppState> store) {
      return store.state;
    });
  }
}
