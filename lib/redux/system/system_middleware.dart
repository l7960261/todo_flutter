import 'package:path_provider/path_provider.dart';
import 'package:redux/redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_flutter/data/repositories/persistence_repository.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/system/system_actions.dart';
import 'package:todo_flutter/utils/constants.dart';
import 'package:todo_flutter/utils/file_storage.dart';

List<Middleware<AppState>> createStoreSystemMiddleware(
    [PersistenceRepository systemRepository = const PersistenceRepository(
        fileStorage: const FileStorage(
            'system_state', getApplicationDocumentsDirectory))]) {
  final changeLanguage = _setLanguageInPrefs(systemRepository);
  final changeTheme = _setThemeInPrefs(systemRepository);

  return [
    TypedMiddleware<AppState, ChangeLanguage>(changeLanguage),
    TypedMiddleware<AppState, ChangeTheme>(changeTheme),
  ];
}

Middleware<AppState> _setLanguageInPrefs(PersistenceRepository systemRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(kSharedPrefLanguage, action.languageCode);

    final state = store.state;
    systemRepository.saveSystemState(state.systemState);
  };
}

Middleware<AppState> _setThemeInPrefs(PersistenceRepository systemRepository) {
  return (Store<AppState> store, action, NextDispatcher next) async {
    next(action);

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(kSharedPrefTheme, action.theme);

    final state = store.state;
    systemRepository.saveSystemState(state.systemState);
  };
}
