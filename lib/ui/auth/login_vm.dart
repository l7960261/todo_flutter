import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/routes.dart';
import 'package:todo_flutter/ui/auth/login.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LoginVM>(
        builder: (BuildContext context, LoginVM vm) {
          return LoginView(viewModel: vm);
        },
        converter: LoginVM.fromStore);
  }
}

class LoginVM {
  final void Function(BuildContext, String, String) onLoginPressed;

  LoginVM({@required this.onLoginPressed});

  static LoginVM fromStore(Store<AppState> store) {
    return LoginVM(onLoginPressed:
        (BuildContext context, String userName, String password) {
      final Completer<Null> completer = Completer<Null>();
      store.dispatch(UserLoginRequest(
          completer: completer,
          account: userName.trim(),
          password: password.trim()));

      completer.future.then((_) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      });
    });
  }
}
