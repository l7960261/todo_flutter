import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/system/system_actions.dart';
import 'package:todo_flutter/redux/system/system_state.dart';

final Reducer<SystemState> systemStateReducer = combineReducers<SystemState>([
  TypedReducer<SystemState, ChangeLanguage>(changeLanguageReducer),
  TypedReducer<SystemState, ChangeThemeIndex>(changeThemeIndexReducer)
]);

SystemState changeLanguageReducer(
        SystemState systemState, ChangeLanguage action) =>
    systemState.rebuild((b) => b..curLanguage = action.languageCode);

SystemState changeThemeIndexReducer(
        SystemState systemState, ChangeThemeIndex action) =>
    systemState.rebuild((b) => b..curThemeIndex = action.themeIndex);
