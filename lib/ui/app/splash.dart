import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo_flutter/localization.dart';
import 'package:todo_flutter/styles.dart';
import 'package:todo_flutter/ui/app/splash_vm.dart';
import 'package:todo_flutter/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key, @required this.viewModel}) : super(key: key);

  final SplashVM viewModel;

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer _mTimer;

  _SplashViewState();

  _handleAfterInit(bool isAuthenticated) {
    _mTimer = Timer(Duration(milliseconds: 3000), () {
      if (isAuthenticated) {
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
      child: Column(
        children: <Widget>[
          Expanded(
            child: Center(
                child: Text(AppLocalization.of(context).splashTitle,
                    style: TextStyle(fontSize: AppFontSizes.largest(context)))),
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
