import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/splash_screen.dart';

class Splash extends StatelessWidget {
  Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(builder: (BuildContext context, AppState state) {
      return SplashScreen(isLogin: state.auth.isLogin);
    }, converter: (Store<AppState> store) {
      return store.state;
    });
  }
}
