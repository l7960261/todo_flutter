import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createStoreAuthMiddleware(
    [FileStorage storage =
        const FileStorage('_redux_app_', getApplicationDocumentsDirectory)]) {
  final saveFile = _saveMiddleware(storage);

  return [
    TypedMiddleware<AppState, LoginSuccessAction>(saveFile),
    TypedMiddleware<AppState, LogoutSuccessAction>(saveFile),
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
