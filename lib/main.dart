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
      drawer: Drawer(
        //elevation: 0,
        //shadowColor: Colors.red,
        backgroundColor: Colors.grey,
        width: 300,
        child: Column(
          children: [Text('Random Drawer')],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        //backgroundColor: Colors.red,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.blue,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        onTap: (int slectedIndex){

        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        ]
      ),*/ // Akhon use hoi na
      bottomNavigationBar: NavigationBar(
          selectedIndex: 1,
          onDestinationSelected: (int slectedIndex) {

          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          ]),
      /*body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
              Text('jashcisdhci'),
            ],
          ),
        ),
      ),*/
      body: Scrollbar(
        thickness: 50,
        interactive: true,
        /*child: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          children: [
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
            Text('jashcisdhci'),
          ],
        ),*/
        /*child: ListView.builder(
          itemCount: 100,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          itemBuilder: (context,index) {
            return Text('item ${index}');
          }
        ),*/
        child: ListView.builder(
            itemCount: friendList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(friendList[index]),
              );
            }),
      ),
    );
  }
}
