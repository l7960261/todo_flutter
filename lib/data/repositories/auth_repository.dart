import 'dart:async';

import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/data/serializers.dart';
import 'package:todo_flutter/utils/web_client.dart';

class AuthRepository {
  final WebClient webClient;

  const AuthRepository({this.webClient = const WebClient()});

  Future<LoginResponseData> login(String account, String password) async {
    final dynamic response = await webClient.get(
        'https://raw.githubusercontent.com/l7960261/todo_flutter/master/.mock/api/userinfo.json');

    print('login response: $response');

    final LoginResponseData loginResponse =
        serializers.deserializeWith(LoginResponseData.serializer, response);

    return loginResponse;
  }
}
