import 'package:todo_flutter/models/app_state.dart';

enum Actions { Increase, LogoutSuccess }

class LoginSuccessAction {
  final String account;
  LoginSuccessAction({this.account});
}

AppState appReducer(AppState state, dynamic action) {
  if (Actions.Increase == action) {
    state.main.counter += 1;
  }

  if (Actions.LogoutSuccess == action) {
    state.auth.isLogin = false;
    state.auth.account = null;
  }

  if (action is LoginSuccessAction) {
    state.auth.isLogin = true;
    state.auth.account = action.account;
  }

  return state;
}