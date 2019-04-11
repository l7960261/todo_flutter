import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/data/repositories/auth_repository.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/utils/constants.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(
    [AuthRepository repository = const AuthRepository()]) {
  final loginRequest = _createLoginRequest(repository);

  return [
    TypedMiddleware<AppState, UserLoginRequest>(loginRequest),
  ];
}

void _saveAuthLocal(dynamic data) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(kKeychainSecret, data.secret);
}

Middleware<AppState> _createLoginRequest(AuthRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    repository.login(action.account, action.password, action.url).then((data) {
      _saveAuthLocal(data);
      store.dispatch(LoadDataSuccess(completer: action.completer, data: data));
    });

    next(action);
  };
}
