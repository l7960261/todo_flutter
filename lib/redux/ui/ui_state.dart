import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ui_state.g.dart';

abstract class UIState implements Built<UIState, UIStateBuilder> {
  factory UIState() {
    return _$UIState._();
  }
  UIState._();

  static Serializer<UIState> get serializer => _$uIStateSerializer;
}
