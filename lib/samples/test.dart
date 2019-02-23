import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

@JsonSerializable()
class Test {
  Hello hello;

  Test({this.hello});
  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}

@JsonSerializable()
class Hello {
  final int i;

  Hello({this.i});
  factory Hello.fromJson(Map<String, dynamic> json) => _$HelloFromJson(json);
}