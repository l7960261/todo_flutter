import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/system/system_actions.dart';
import 'package:todo_flutter/redux/system/system_state.dart';

final Reducer<SystemState> systemStateReducer = combineReducers<SystemState>([
  TypedReducer<SystemState, ChangeLanguage>(changeLanguageReducer),
  TypedReducer<SystemState, ChangeTheme>(changeThemeReducer)
]);

SystemState changeLanguageReducer(
        SystemState systemState, ChangeLanguage action) =>
    systemState.rebuild((b) => b..curLanguage = action.languageCode);

SystemState changeThemeReducer(
        SystemState systemState, ChangeTheme action) =>
    systemState.rebuild((b) => b..curTheme = action.theme);
