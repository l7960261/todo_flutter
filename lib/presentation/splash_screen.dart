import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_flutter/routes.dart';

class SplashScreen extends StatelessWidget {
  final bool isLogin;

  SplashScreen({Key key, this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 3000), () {
      if (isLogin) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      } else {
        Navigator.of(context).pushReplacementNamed(AppRoutes.login);
      }
    });

    return Material(child: Center(child: Text('Splash Screen')));
  }
}
