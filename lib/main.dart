import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorld());
}

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Remove Corner Debug Banner
      title: 'Welcome',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> friendList = [
    'Mahfuz',
    'Shorif',
    'Sakib',
    'Rafi',
    'Nabil',
    'Siam'
  ];
  TextEditingController _emailTEControler=TextEditingController();
  TextEditingController _passTEControler=TextEditingController();
  GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
        //leading: Icon(Icons.add),  Basically we dont use leading
      ),
      /*body: ListView.builder(
        itemCount: friendList.length,
        itemBuilder: (context,index)
        {
          return ListTile(
            title: Text(friendList[index]),
            subtitle: Text('Friend no $index'),
            trailing: Icon(Icons.arrow_forward),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: () {
              print('On Tap $index');
            },
            onLongPress: () {
              print('On Long Tap $index');
            },
            tileColor: Colors.white38,
            contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
            enabled: true,
            dense: false,
            titleTextStyle: TextStyle(fontSize: 20,color: Colors.red),
            selected: false,
            selectedColor: Colors.black,
          );
        }
      ),*/
      /*body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 5

        ),

        children: [
          Text('Hello'),
          Text('Hello'),
          Text('Hello'),
          Text('Hello'),
        ],
      ),*/
      /*body: GridView.builder(
        itemCount: friendList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (contex, index)
        {
          return Center(child: Text(friendList[index]));
        }*/
       body: Padding(
         padding: const EdgeInsets.all(16),
         child: Form(
           key: _formKey,
           child: Column(
             children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _emailTEControler,
                validator: (String? value)
                {
                  if(value==null || value!.isEmpty)
                  {
                    return 'Enter Your Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'email',
                ),
              ),
               TextFormField(
                 autovalidateMode: AutovalidateMode.always,
                controller: _passTEControler,
                validator: (String? value)
                {
                  if(value?.isEmpty ?? true)
                  {
                    return 'Enter your Password';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'password',
                ),
              ),
               ElevatedButton(onPressed: (){
                 /*String email=_emailTEControler.text;
                 String password=_passTEControler.text;
                 if(email.isNotEmpty && password.isNotEmpty)
                 {
                   print('Succesfully Log in');
                 }
                 else
                 {
                   print('Failed to Log in');
                 }*/
                 if(_formKey.currentState!.validate())
                 {
                   print('Succesfully Log in');
                 }
                 else
                 {
                   print('Failed to Log in');
                 }
               },
                 child: Text('Tap')
               )
             ],
           ),
         ),
       ),
    );
  }
}
