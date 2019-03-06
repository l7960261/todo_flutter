import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/models/auth_state.dart';
import 'package:todo_flutter/models/home_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [AppState])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
