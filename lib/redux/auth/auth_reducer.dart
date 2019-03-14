import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UserLogout>(userLogoutReducer),
  TypedReducer<AuthState, UserLoginRequest>(userLoginRequestReducer),
  TypedReducer<AuthState, UserLoginSuccess>(userLoginSuccessReducer)
]);

AuthState userLogoutReducer(AuthState authState, UserLogout action) =>
    authState.rebuild((b) => b
      ..account = ''
      ..isLogin = false);

AuthState userLoginRequestReducer(
        AuthState authState, UserLoginRequest action) =>
    authState.rebuild((b) => b
      ..account = action.account
      ..isLogin = false);

AuthState userLoginSuccessReducer(
        AuthState authState, UserLoginSuccess action) =>
    authState.rebuild((b) => b
      ..account = action.account
      ..isLogin = true);
