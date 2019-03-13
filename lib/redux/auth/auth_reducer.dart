import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UserLoginSuccess>(_login),
  TypedReducer<AuthState, UserLogout>(_logout)
]);

AuthState _login(AuthState authState, UserLoginSuccess action) =>
    authState.rebuild((b) => b
      ..account = action.account
      ..isLogin = true);

AuthState _logout(AuthState authState, UserLogout action) =>
    authState.rebuild((b) => b
      ..account = ''
      ..isLogin = false);
