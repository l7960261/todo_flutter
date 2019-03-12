import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/models/auth_state.dart';
import 'package:todo_flutter/models/serializers.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createMiddleware(
    [FileStorage storage =
        const FileStorage('_redux_app_', getApplicationDocumentsDirectory)]) {
  final saveFile = _saveMiddleware(storage);
  final loadState = _createLoadState(storage);

  return [
    TypedMiddleware<AppState, IncreaseAction>(_normalMiddleware()),
    TypedMiddleware<AppState, LoadStateRequest>(loadState),
    TypedMiddleware<AppState, LoginSuccessAction>(saveFile),
    TypedMiddleware<AppState, LogoutSuccessAction>(saveFile),
    TypedMiddleware<AppState, LoadedAction>(saveFile)
  ];
}

Middleware<AppState> _createLoadState(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    try {
      final String data = await storage.load();
      final AuthState authState =
          serializers.deserializeWith(AuthState.serializer, json.decode(data));
      store.dispatch(
          LoadedAction(isLogin: authState.isLogin, account: authState.account));
    } catch (error) {
      print(error);
    }

    action.completer.complete(null);

    next(action);
  };
}

Middleware<AppState> _saveMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_saveMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    final data =
        serializers.serializeWith(AuthState.serializer, store.state.authState);
    storage.save(json.encode(data));

    print('_saveMiddleware 結束');
    print('AppState: ${store.state}');
  };
}

Middleware<AppState> _normalMiddleware() {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_normalMiddleware 開始');
    print('AppState: ${store.state}');

    next(action);

    print('_normalMiddleware 結束');
    print('AppState: ${store.state}');
  };
}
