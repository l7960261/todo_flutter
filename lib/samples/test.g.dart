// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test _$TestFromJson(Map<String, dynamic> json) {
  return Test(
      hello: json['hello'] == null
          ? null
          : Hello.fromJson(json['hello'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TestToJson(Test instance) =>
    <String, dynamic>{'hello': instance.hello};

Hello _$HelloFromJson(Map<String, dynamic> json) {
  return Hello(i: json['i'] as int);
}

Map<String, dynamic> _$HelloToJson(Hello instance) =>
    <String, dynamic>{'i': instance.i};
