import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/routes.dart';

class SplashScreen extends StatefulWidget {
  final void Function() onInit;

  SplashScreen({Key key, @required this.onInit}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _mTimer;

  _SplashScreenState();

  @override
  void initState() {
    widget.onInit();
    super.initState();
    _mTimer = Timer.periodic(Duration(milliseconds: 3000), (Timer timer) {
      print('tick: ${timer.tick}');

      final isLogin = StoreProvider.of<AppState>(context).state.auth.isLogin;

      if (isLogin) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      } else {
        Navigator.of(context).pushReplacementNamed(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Text(
      'Splash Screen',
      style: TextStyle(fontSize: 26.0),
    )));
  }

  @override
  void dispose() {
    super.dispose();
    _mTimer.cancel();
  }
}
