import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/auth/auth_state.dart';
import 'package:todo_flutter/redux/dashboard/dashboard_state.dart';
import 'package:todo_flutter/redux/system/system_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [AppState, LoginResponseData])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
