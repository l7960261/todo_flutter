import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/utils/file_storage.dart';

class PersistenceRepository {
  final FileStorage fileStorage;

  const PersistenceRepository({
    @required this.fileStorage
  });

  Future<File> saveAuthState(AuthState state) async {
    final data = serializers.serializeWith(AuthState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<AuthState> loadAuthState() async {
    final data = await fileStorage.load();
    return await serializers.deserializeWith(AuthState.serializer, json.decode(data));    
  }
}