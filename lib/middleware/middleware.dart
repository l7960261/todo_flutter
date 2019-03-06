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
  final loadFile = _loadMiddleware(storage);
  final saveFile = _saveMiddleware(storage);

  return [
    TypedMiddleware<AppState, IncreaseAction>(_normalMiddleware()),
    TypedMiddleware<AppState, CheckLoggedInAction>(loadFile),
    TypedMiddleware<AppState, LoginSuccessAction>(saveFile),
    TypedMiddleware<AppState, LogoutSuccessAction>(saveFile),
    TypedMiddleware<AppState, LoadedAction>(saveFile)
  ];
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

Middleware<AppState> _loadMiddleware(FileStorage storage) {
  return (Store<AppState> store, action, NextDispatcher next) {
    print('_loadMiddleware 開始');
    print('AppState: ${store.state}');

    storage.load().then((data) {
      print('storage json: $json');
      final state = serializers.deserializeWith(AuthState.serializer, json.decode(data));
      store.dispatch(
          LoadedAction(isLogin: state.isLogin, account: state.account));
      action.completer.complete(null);
    });

    next(action);

    print('_loadMiddleware 結束');
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
