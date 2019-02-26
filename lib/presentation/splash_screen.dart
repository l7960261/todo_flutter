import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/routes.dart';

class SplashScreen extends StatefulWidget {
  final AuthState state;

  SplashScreen({Key key, this.state}) : super(key: key);

  @override
  _SplashScreenState createState() =>
      _SplashScreenState(isLogin: state.isLogin);
}

class _SplashScreenState extends State<SplashScreen> {
  final bool isLogin;
  Timer _mTimer;

  _SplashScreenState({Key key, this.isLogin});

  @override
  void initState() {
    super.initState();
    _mTimer = Timer(Duration(milliseconds: 3000), () {
      if (isLogin) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      } else {
        Navigator.of(context).pushReplacementNamed(AppRoutes.login);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(child: Center(child: Text('Splash Screen')));
  }

  @override
  void dispose() {
    super.dispose();
    _mTimer.cancel();
  }
}
