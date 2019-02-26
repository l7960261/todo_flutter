import 'package:flutter/material.dart';

class AppRoutes {
  static const splash = '/';
  static const home = '/home';
  static const login = '/login';
}

class NoTransitionRoute<T> extends MaterialPageRoute<T> {
  NoTransitionRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}
