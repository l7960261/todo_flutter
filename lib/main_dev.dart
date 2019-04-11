import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_flutter/main.dart';

void main() async {
  await DotEnv().load('assets/.dev.env');

  runApp(ReduxApp());
}
