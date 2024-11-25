import 'package:flutter/material.dart';

class AddNewTodoScreen extends StatefulWidget {
  const AddNewTodoScreen({super.key});

  @override
  State<AddNewTodoScreen> createState() => _AddNewTodoScreenState();
}

class _AddNewTodoScreenState extends State<AddNewTodoScreen> {
  final TextEditingController _titleTEController= TextEditingController();
  final TextEditingController _descriptionTEController= TextEditingController();
  final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Todo'),
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
