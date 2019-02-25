import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      auth: authStateReducer(state.auth, action),
      main: incrementReducer(state.main, action));
}

AuthState authStateReducer(AuthState state, action) {
  if (Actions.LogoutSuccess == action) {
    state.isLogin = false;
    state.account = null;
  }

  if (action is LoginSuccessAction) {
    state.isLogin = true;
    state.account = action.account;
  }

  return AuthState(account: state.account, isLogin: state.isLogin);
}

MainPageState incrementReducer(MainPageState state, action) {
  if (action == Actions.Increase) {
    return MainPageState(counter: state.counter + 1);
  }

  return state;
}
