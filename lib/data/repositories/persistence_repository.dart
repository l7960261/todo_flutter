import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/file_storage.dart';
import 'package:todo_flutter/utils/themes.dart';

class PersistenceRepository {
  final FileStorage fileStorage;

  const PersistenceRepository({@required this.fileStorage});

  Future<File> saveAuthState(AuthState state) async {
    final data = serializers.serializeWith(AuthState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<AuthState> loadAuthState() async {
    final data = await fileStorage.load();
    return await serializers.deserializeWith(
        AuthState.serializer, json.decode(data));
  }

  Future<File> saveSystemState(SystemState state) async {
    final stateWithoutPrefs = state.rebuild((b) => b
      ..curLanguage = null
      ..curTheme = null);
    final data =
        serializers.serializeWith(SystemState.serializer, stateWithoutPrefs);
    return await fileStorage.save(json.encode(data));
  }

  Future<SystemState> loadSystemState() async {
    final data = await fileStorage.load();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String curLanguage =
        prefs.getString(kSharedPrefLanguage) ?? kDefaultLanguage;
    final String curTheme =
        prefs.getString(kSharedPrefTheme) ?? AppThemes.defaultTheme;
    final systemState =
        serializers.deserializeWith(SystemState.serializer, json.decode(data));

    return systemState.rebuild((b) => b
      ..curLanguage = curLanguage
      ..curTheme = curTheme);
  }

  Future<FileSystemEntity> delete() async {
    return await fileStorage
        .exists()
        .then((exists) => exists ? fileStorage.delete() : null);
  }
}
