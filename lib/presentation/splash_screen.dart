import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_flutter/containers/splash.dart';
import 'package:todo_flutter/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key, @required this.viewModel}) : super(key: key);

  final SplashVM viewModel;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer _mTimer;

  _SplashScreenState();

  _handleAfterInit(bool isLogin) {
    print('isLogin: $isLogin');
    _mTimer = Timer(Duration(milliseconds: 3000), () {
      if (isLogin) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      } else {
        Navigator.of(context).pushReplacementNamed(AppRoutes.login);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    widget.viewModel.onInit(_handleAfterInit);
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
    _mTimer.cancel();
    super.dispose();
  }
}
