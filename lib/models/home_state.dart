import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  factory HomeState() {
    return _$HomeState._(counter: 0);
  }

  HomeState._();

  int get counter;

  static Serializer<HomeState> get serializer => _$homeStateSerializer;
}
