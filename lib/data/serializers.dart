import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/app/home_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [AppState])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
