import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/second_screen.dart';

class Second extends StatelessWidget {
  Second({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(builder: (BuildContext context, AppState state) {
      return SecondPage(
          title: 'Flutter Demo Second Page',
          counter: state.main.counter,
          isLogin: state.auth.isLogin,
          account: state.auth.account);
    }, converter: (Store<AppState> store) {
      return store.state;
    });
  }
}
