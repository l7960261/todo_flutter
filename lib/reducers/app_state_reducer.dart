import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/models/auth_state.dart';
import 'package:todo_flutter/models/home_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return state.rebuild((b) => b
    ..authState.replace(authStateReducer(state.authState, action))
    ..homeState.replace(homeStateReducer(state.homeState, action)));
}

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

final Reducer<HomeState> homeStateReducer = combineReducers<HomeState>(
    [TypedReducer<HomeState, IncreaseAction>(_increase)]);

HomeState _increase(HomeState state, IncreaseAction action) =>
    state.rebuild((b) => b..counter = b.counter + 1);
