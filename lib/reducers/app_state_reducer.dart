import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

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
