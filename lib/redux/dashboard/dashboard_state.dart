import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:todo_flutter/data/models/models.dart';

part 'dashboard_state.g.dart';

abstract class DashboardState
    implements Built<DashboardState, DashboardStateBuilder> {
  factory DashboardState() {
    return _$DashboardState._(data: null);
  }

  DashboardState._();

  @nullable
  DashboardEntity get data;

  bool get isLoaded {
    return data == null || data.balance == null;
  }

  static Serializer<DashboardState> get serializer =>
      _$dashboardStateSerializer;
}
