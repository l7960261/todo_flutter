import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_flutter/ui/splash_vm.dart';
import 'package:todo_flutter/routes.dart';

class Splash extends StatefulWidget {
  const Splash({Key key, @required this.viewModel}) : super(key: key);

  final SplashVM viewModel;

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer _mTimer;

  _SplashState();

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
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
                child: Text('Splash Screen', style: TextStyle(fontSize: 26.0))),
          ),
          SizedBox(
            height: 4.0,
            child: LinearProgressIndicator(),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mTimer.cancel();
    super.dispose();
  }
}
