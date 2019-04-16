import 'dart:async';

import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/utils/web_client.dart';

class AuthRepository {
  final WebClient webClient;

  const AuthRepository({this.webClient = const WebClient()});

  Future<LoginResponseData> login(
      String account, String password, String url) async {
    final dynamic response =
        await webClient.post(url, {account: account, password: password});

    final LoginResponse loginResponse =
        serializers.deserializeWith(LoginResponse.serializer, response);

    return loginResponse.data;
  }
}
