import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

class WebClient {
  const WebClient();

  String _parseError(int code, String response) {
    dynamic message = response;

    if (response.contains('DOCTYPE html')) {
      return '$code: An error occurred';
    }

    try {
      final dynamic jsonResponse = json.decode(response);
      message = jsonResponse['error'] ?? jsonResponse;
      message = message['message'] ?? message;
    } catch (error) {
      // do nothing
    }

    return '$code: $message';
  }

  Future<dynamic> get(String url) async {
    Dio dio = Dio();
    Response response = await dio.get(url);

    if (response.statusCode >= 400) {
      print('FAILED - WebClient get $url');
      print('data: ${response.data}');

      throw _parseError(response.statusCode, response.data);
    }

    return json.decode(response.data);
  }
}
