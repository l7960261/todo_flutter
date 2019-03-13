import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginSuccessAction>(_login),
  TypedReducer<AuthState, LogoutSuccessAction>(_logout),
  TypedReducer<AuthState, LoadedAction>(_loaded)
]);

AuthState _logout(AuthState state, LogoutSuccessAction action) =>
    state.rebuild((b) => b
      ..account = ''
      ..isLogin = false);

AuthState _login(AuthState state, LoginSuccessAction action) =>
    state.rebuild((b) => b
      ..account = action.account
      ..isLogin = true);

AuthState _loaded(AuthState state, LoadedAction action) =>
    state.rebuild((b) => b
      ..account = action.account
      ..isLogin = action.isLogin);
