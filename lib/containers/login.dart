import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/login_screen.dart';

class Login extends StatelessWidget {
  Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(builder: (BuildContext context, AppState state) {
      return LoginScreen(
          title: 'Login',
          counter: state.home.counter,
          account: state.auth.account);
    }, converter: (Store<AppState> store) {
      return store.state;
    });
  }
}
