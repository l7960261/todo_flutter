import 'package:redux/redux.dart';
import 'package:todo_flutter/redux/app/app_actions.dart';
import 'package:todo_flutter/redux/app/app_state.dart';
import 'package:todo_flutter/redux/app/home_state.dart';
import 'package:todo_flutter/redux/auth/auth_actions.dart';
import 'package:todo_flutter/redux/auth/auth_reducer.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is LoadStateSuccess) {
    return action.state.rebuild((b) => b);
  }

  return state.rebuild((b) => b
    ..authState.replace(authStateReducer(state.authState, action))
    ..homeState.replace(homeStateReducer(state.homeState, action)));
}

final Reducer<HomeState> homeStateReducer = combineReducers<HomeState>(
    [TypedReducer<HomeState, IncreaseAction>(_increase)]);

HomeState _increase(HomeState state, IncreaseAction action) =>
    state.rebuild((b) => b..counter = b.counter + 1);
