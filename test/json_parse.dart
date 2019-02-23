import  'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_flutter/samples/mock.dart';
import 'package:todo_flutter/samples/data.dart';

void main() {
  group('jsonparse test', () {
    test('mockdata test', () {
      Data data1 = Data.fromJson(json.decode(JsonString.mockdata));
      expect(data1.url, 'http://www.getdropbox.com/u/2/screencast.html');
    });
  });
}