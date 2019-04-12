import 'package:fish_redux/fish_redux.dart';
import 'package:test_flutter/fish_redux/todo_list_page/todo_component/action.dart';
import 'package:test_flutter/fish_redux/todo_list_page/todo_component/state.dart';

Reducer<ToDoState> buildReducer() {
  return asReducer(<Object, Reducer<ToDoState>>{
    ToDoAction.edit: _edit,
    ToDoAction.done: _markDone
  });
}

ToDoState _edit(ToDoState state, Action action) {
  final ToDoState toDo = action.payload;
  if (state.uniqueId == toDo.uniqueId) {
    return state.clone()
      ..title = toDo.title
      ..desc = toDo.desc;
  }
  return state;
}

ToDoState _markDone(ToDoState state, Action action) {
  final String uniqueId = action.payload;
  if (state.uniqueId == uniqueId) {
    return state.clone()..isDone = !state.isDone;
  }
  return state;
}
