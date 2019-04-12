import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

class WebClient {
  static Dio dio = Dio(BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 5000,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
      }));

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
    Response response = await dio.get(url);

    if (response.statusCode >= 400) {
      print('======FAILED======');
      print('WebClient get');
      print('url: $url');
      print('response data: ${response.data}');
      print('======FAILED======');

      throw _parseError(response.statusCode, response.data);
    }

    return response.data;
  }

  Future<dynamic> post(String url, [dynamic data]) async {
    Response response = await dio.post(url, data: data);

    if (response.statusCode >= 400) {
      print('======FAILED======');
      print('WebClient post');
      print('url: $url');
      print('data: $data');
      print('response data: ${response.data}');
      print('======FAILED======');

      throw _parseError(response.statusCode, response.data);
    }

    return response.data;
  }
}
