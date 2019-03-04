import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      auth: authStateReducer(state.auth, action),
      home: homePageStateReducer(state.home, action));
}

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginSuccessAction>(_login),
  TypedReducer<AuthState, LogoutSuccessAction>(_logout),
  TypedReducer<AuthState, LoadedAction>(_loaded)
]);

AuthState _logout(AuthState state, LogoutSuccessAction action) =>
    AuthState(isLogin: false, account: null);

AuthState _login(AuthState state, LoginSuccessAction action) =>
    AuthState(isLogin: true, account: action.account);

AuthState _loaded(AuthState state, LoadedAction action) =>
    AuthState(isLogin: action.isLogin, account: action.account);

final Reducer<HomePageState> homePageStateReducer =
    combineReducers<HomePageState>(
        [TypedReducer<HomePageState, IncreaseAction>(_increase)]);

HomePageState _increase(HomePageState state, IncreaseAction action) =>
    HomePageState(counter: state.counter + 1);
