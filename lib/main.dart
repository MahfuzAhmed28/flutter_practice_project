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
      /*body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(friendList[index]),
              Divider(
                height: 10,
                thickness: 10,
                color: Colors.red,
                indent: 10,
                endIndent: 10,
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context,int index) {
          return Container(
            //width: 50,
            height: 10,

            color: Colors.blue,
          );
          return Divider(
            color: Colors.green,
            indent: 10,
          );
        },
      ),*/
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,

                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3)
                    )
                  ]


                ),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(10),
                child: Text('Hello'),
              ),
              Container(
                width: 100,
                height: 100,

                alignment: Alignment.center,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  //borderRadius: BorderRadius.circular(20),
                  /*borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(20),

                  )*/
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/shoe.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.9
                  ),

                ),
                child: Text('Hello'),
              )
            ],
          )
        ],
      )


    );
  }
}
