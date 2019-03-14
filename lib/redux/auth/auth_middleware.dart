import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';

List<Middleware<AppState>> createStoreAuthMiddleware() {
  final loginRequest = _createLoginRequest();

  return [
    TypedMiddleware<AppState, UserLoginRequest>(loginRequest),
  ];
}

Middleware<AppState> _createLoginRequest() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('驗證帳密登入 username: ${action.account} password: ${action.password}');
    print('通過驗證進行載入會員資訊');
    store.dispatch(
        LoadDataSuccess(completer: action.completer, data: action.account));

    next(action);
  };
}
