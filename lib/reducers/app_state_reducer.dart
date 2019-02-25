import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      auth: authStateReducer(state.auth, action),
      main: mainPageStateReducer(state.main, action));
}

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, LoginSuccessAction>(_login),
  TypedReducer<AuthState, LogoutSuccessAction>(_logout),
]);

AuthState _logout(AuthState state, LogoutSuccessAction action) =>
    AuthState(isLogin: false, account: null);

AuthState _login(AuthState state, LoginSuccessAction action) =>
    AuthState(isLogin: true, account: action.account);

final Reducer<MainPageState> mainPageStateReducer =
    combineReducers<MainPageState>(
        [TypedReducer<MainPageState, IncreaseAction>(_increase)]);

MainPageState _increase(MainPageState state, IncreaseAction action) =>
    MainPageState(counter: state.counter + 1);
