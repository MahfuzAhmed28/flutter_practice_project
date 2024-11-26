import 'package:flutter/material.dart';
import 'package:flutter_practice_project/models/todo.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({super.key, required this.todo, required this.onUpdateTodo});

  final Todo todo;
  final Function(Todo) onUpdateTodo;

  @override
  State<UpdateTodoScreen> createState() => _UpdateTodoScreenState();
}

class _UpdateTodoScreenState extends State<UpdateTodoScreen> {
  final TextEditingController _titleTEController= TextEditingController();
  final TextEditingController _descriptionTEController= TextEditingController();
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();

  @override
  void initState()
  {
    super.initState();
    _titleTEController.text=widget.todo.title;
    _descriptionTEController.text=widget.todo.description;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Todo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formkey,

            child: Column(
              children: [
                TextFormField(
                  controller: _titleTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      labelText: 'Title',
                      hintText: 'Write your to do title'
                  ),
                  validator: (String? value){
                    if(value==null || value.trim().isEmpty)
                    {
                      return 'Write Your Title';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16,),
                TextFormField(
                  controller: _descriptionTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 3,
                  decoration: InputDecoration(
                      labelText: 'Description',
                      hintText: 'Write your description here'
                  ),
                  validator: (String? value){
                    if(value==null || value.trim().isEmpty)
                    {
                      return 'Write Your Description';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24,),
                ElevatedButton(
                  onPressed: () {
                    if(_formkey.currentState!.validate()){
                      Todo todo=Todo(
                        title: _titleTEController.text.trim(),
                        description: _descriptionTEController.text.trim(),
                        status: widget.todo.status
                      );
                      widget.onUpdateTodo(todo);
                      Navigator.pop(context);
                          
                    }
                  },
                  child: Text('Add'),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
