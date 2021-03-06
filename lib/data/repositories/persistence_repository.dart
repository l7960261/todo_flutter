import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/redux/ui/ui_state.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/file_storage.dart';

class PersistenceRepository {
  final FileStorage fileStorage;

  const PersistenceRepository({@required this.fileStorage});

  Future<File> saveAuthState(AuthState state) async {
    final stateWithoutSecret = state.rebuild((b) => b..secret = '');
    final data =
        serializers.serializeWith(AuthState.serializer, stateWithoutSecret);
    return await fileStorage.save(json.encode(data));
  }

  Future<AuthState> loadAuthState() async {
    final data = await fileStorage.load();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String secret = prefs.getString(kKeychainSecret) ?? '';
    final authState =
        serializers.deserializeWith(AuthState.serializer, json.decode(data));
    return authState.rebuild((b) => b..secret = secret);
  }

  Future<File> saveSystemState(SystemState state) async {
    final data =
        serializers.serializeWith(SystemState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<SystemState> loadSystemState() async {
    final data = await fileStorage.load();
    return serializers.deserializeWith(SystemState.serializer, json.decode(data));
  }

  Future<File> saveDashboardState(DashboardState state) async {
    final data = serializers.serializeWith(DashboardState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<DashboardState> loadDashboardState() async {
    final String data = await fileStorage.load();
    return serializers.deserializeWith(
        DashboardState.serializer, json.decode(data));
  }

  Future<File> saveUIState(UIState state) async {
    final data = serializers.serializeWith(UIState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<UIState> loadUIState() async {
    final String data = await fileStorage.load();
    return serializers.deserializeWith(UIState.serializer, json.decode(data));
  }

  Future<FileSystemEntity> delete() async {
    return await fileStorage
        .exists()
        .then((exists) => exists ? fileStorage.delete() : null);
  }
}
