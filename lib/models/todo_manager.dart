import 'package:flutter_practice_project/models/todo.dart';

//No work it just for show


class TodoManager{
  final List<Todo> _listOftodo=[];
  List<Todo> get todoList => _listOftodo;

  void addTodo(Todo todo)
  {
    _listOftodo.add(todo);
  }

  void deleteTodo(int index)
  {
    _listOftodo.removeAt(index);
  }

  void updateTodo(int index,Todo todo)
  {
    _listOftodo[index]=todo;
  }

  void updateTodoStatus(int index, TodoStatus status)
  {
    _listOftodo[index].status=status;
  }
}