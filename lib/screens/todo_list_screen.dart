import 'package:flutter/material.dart';
import 'package:flutter_practice_project/screens/add_new_todo_screen.dart';
import 'package:flutter_practice_project/screens/todo.dart';
import 'package:flutter_practice_project/screens/update_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  final List<Todo> listOftodo=[];

  void _addTodo(Todo todo)
  {
    listOftodo.add(todo);
    setState(() {});
  }

  void _deleteTodo(int index)
  {
    listOftodo.removeAt(index);
    setState(() {});
  }

  void _updateTodo(int index,Todo todo)
  {
    listOftodo[index]=todo;
    setState(() {});
  }

  void _updateTodoStatus(int index, TodoStatus status)
  {
    listOftodo[index].status=status;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Visibility(
        visible: listOftodo.isNotEmpty,
        replacement: Center(
          child: Text('Noting'),
        ),
        child: ListView.builder(
          itemCount: listOftodo.length,
          itemBuilder: (context,index){
            Todo todo=listOftodo[index];
            return ListTile(
              title: Text(todo.title),
              subtitle: Text(todo.description),
              leading: Text(todo.status.name),
              trailing: Wrap(
                children: [
                  IconButton(
                    onPressed: () {
                      _deleteTodo(index);
                    },
                    icon: const Icon(Icons.delete)
                  ),
                  IconButton(
                    onPressed: () =>_showChangeStatusDialog(index),
                    icon: const Icon(Icons.edit)
                  ),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateTodoScreen()));
              },
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
         Todo? todo=await Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewTodoScreen()));
         if(todo!=null)
         {
            _addTodo(todo);
         }
        },
        child: Icon(Icons.add),
      ),
    );
  }
  void _showChangeStatusDialog(int index){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Change Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Idle'),
              onTap: () {
                _onTapUpdateTodoStatusButton(index, TodoStatus.idle);
              },
            ),
            Divider(height: 0,),
            ListTile(
              title: const Text('In progress'),
              onTap: () {
                _onTapUpdateTodoStatusButton(index, TodoStatus.inProgress);
              },
            ),
            Divider(height: 0,),
            ListTile(
              title: const Text('Done'),
              onTap: () {
                _onTapUpdateTodoStatusButton(index, TodoStatus.done);
              },
            ),
          ],
        ),
      );
    });
  }
  void _onTapUpdateTodoStatusButton(int index,TodoStatus status)
  {
    _updateTodoStatus(index, status);
    Navigator.pop(context);

  }
}
