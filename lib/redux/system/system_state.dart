import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'system_state.g.dart';

abstract class SystemState implements Built<SystemState, SystemStateBuilder> {
  factory SystemState() {
    return _$SystemState._(languageCode: 'en');
  }

  SystemState._();

  String get languageCode;

  static Serializer<SystemState> get serializer => _$systemStateSerializer;
}
