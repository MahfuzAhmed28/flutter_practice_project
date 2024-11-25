import 'package:flutter/material.dart';
import 'package:flutter_practice_project/screens/add_new_todo_screen.dart';
import 'package:flutter_practice_project/screens/update_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
          return ListTile(
            title: const Text('Title of Tod'),
            subtitle: const Text('Description'),
            leading: const Text('Status'),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                IconButton(
                  onPressed: _showChangeStatusDialog,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewTodoScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
  void _showChangeStatusDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Change Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text('Idle'),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text('In progress'),
            ),
            Divider(height: 0,),
            ListTile(
              title: Text('Done'),
            ),
          ],
        ),
      );
    });
  }
}
