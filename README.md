# todo_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

## Dependency

- [built_value](https://pub.dartlang.org/packages/built_value)
- [built_collection](https://pub.dartlang.org/packages/built_collection)
- [flutter_redux](https://pub.dartlang.org/packages/flutter_redux)
- [redux_logging](https://pub.dartlang.org/packages/redux_logging)
- [path_provider](https://pub.dartlang.org/packages/path_provider)
- [intl](https://pub.dartlang.org/packages/intl)
- [shared_preferences](https://pub.dartlang.org/packages/shared_preferences)

## devDependency

- [build_runner](https://pub.dartlang.org/packages/build_runner)
- [built_value_generator](https://pub.dartlang.org/packages/built_value_generator)
- [intl_translation](https://pub.dartlang.org/packages/intl_translation)

## Document Reference

- [Flutter Json自动反序列化——json_serializable v1.5.1 | 掘金技术征文](https://juejin.im/post/5b5f00e7e51d45190571172f)
- [flutter-dart 类的构造函数](https://juejin.im/post/5b2b4c36f265da59b243cac9)
- [flutter中使用redux之基础](https://segmentfault.com/a/1190000015579633)
- [基於 Redux + Redux Persist 進行狀態管理的 Flutter 應用示例](https://www.jishuwen.com/d/2Cgp/zh-tw)
- [Flutter完整开发实战详解(四、 Redux、主题、国际化) | 掘金技术征文](https://juejin.im/post/5b79767ff265da435450a873)
- [Dart’s built_value for Serialization](https://medium.com/dartlang/darts-built-value-for-serialization-f5db9d0f4159)
- [译 在 Flutter 中解析复杂的 JSON](https://juejin.im/post/5b5d782ae51d45191c7e7fb3#heading-5)
- [Internation­alizing Flutter apps](https://flutter.dev/docs/development/accessibility-and-localization/internationalization)

## Command

- build_runner

```
flutter packages pub run build_runner build
```

- Rebuild I10n/messages_all.dart

```
flutter packages pub run intl_translation:extract_to_arb --output-dir=lib/I10n lib/localization.dart
```

```
flutter packages pub run intl_translation:generate_from_arb --output-dir=lib/I10n --no-use-deferred-loading lib/I10n/intl_*.arb lib/localization.dart
```