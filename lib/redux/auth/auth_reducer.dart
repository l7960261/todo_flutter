import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';

final Reducer<AuthState> authStateReducer = combineReducers<AuthState>([
  TypedReducer<AuthState, UserLogout>(userLogoutReducer),
  TypedReducer<AuthState, UserLoginRequest>(userLoginRequestReducer),
  TypedReducer<AuthState, UserLoginSuccess>(userLoginSuccessReducer),
  TypedReducer<AuthState, UserLoginFailure>(userLoginFailureReducer)
]);

AuthState userLogoutReducer(AuthState authState, UserLogout action) =>
    authState.rebuild((b) => b
      ..name = ''
      ..email = ''
      ..secret = ''
      ..isAuthenticated = false);

AuthState userLoginRequestReducer(
        AuthState authState, UserLoginRequest action) =>
    authState.rebuild((b) => b..name = action.account);

AuthState userLoginSuccessReducer(
        AuthState authState, UserLoginSuccess action) =>
    authState.rebuild((b) => b
      ..name = action.name
      ..email = action.email
      ..picture = action.picture
      ..qrCode = action.qrCode
      ..secret = action.secret
      ..isAuthenticated = true);

AuthState userLoginFailureReducer(
        AuthState authState, UserLoginFailure action) =>
    authState.rebuild((b) => b..error = action.error);
