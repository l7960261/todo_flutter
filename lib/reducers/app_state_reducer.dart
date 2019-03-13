import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/models/home_state.dart';
import 'package:todo_flutter/redux/auth/auth_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  return state.rebuild((b) => b
    ..authState.replace(authStateReducer(state.authState, action))
    ..homeState.replace(homeStateReducer(state.homeState, action)));
}

final Reducer<HomeState> homeStateReducer = combineReducers<HomeState>(
    [TypedReducer<HomeState, IncreaseAction>(_increase)]);

HomeState _increase(HomeState state, IncreaseAction action) =>
    state.rebuild((b) => b..counter = b.counter + 1);
