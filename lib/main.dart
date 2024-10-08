import 'package:flutter/material.dart';

void main()
{
  runApp(HelloWorld());
}
class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //Remove Corner Debug Banner
      title: 'Welcome',
      home: Home(),
    );
  }
  

}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.amberAccent,
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
                //padding: EdgeInsets.all(100),
                //padding: EdgeInsets.only(top: 10,left: 10),
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                shadowColor: Colors.green,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),

                ),
                side: BorderSide(
                  color: Colors.green,
                  width: 5,
                ),
                minimumSize: Size(100, 50),
                //maximumSize: Size(200, 200)
              ),
              onPressed: (){
                //print('Tap on Elaveted Button');
                showDialog(
                  barrierColor: Colors.green,
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Delete'),
                      content: Text('Are You Sure?'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('Yes')),
                        TextButton(onPressed: () {}, child: Text('No')),
                      ],
                    );
                });
              },
              child: Text('Tap'),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(),
                onPressed: () {
                  print('Text Button Pressed');
                },
                child: Text('Click Here'),
            ),
            SizedBox(
              height: 10,
            ),
            IconButton(
              style: IconButton.styleFrom(),
              onPressed: () {
                int a=10;
                print('Icon Button Pressed ${a}');
              },
              icon: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(),
              onPressed: () {
                int a=10;
                print('Icon Button Pressed ${a}');
              },
              //child: Icon(Icons.abc),
              child: Text('Press'),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print("Just On Tap");
              },
              onDoubleTap: () {
                print('Double Tap');
              },
              onLongPress: () {
                print('Long Press');
              },
              onLongPressCancel: () {
                print('Long Press Cancel');
              },
              onLongPressEnd: (details) {
                print('Long Press End');
              },
              child: Column(
                children: [
                  Text('Simple Button'),
                  Text('Simple Button'),
                  Text('Simple Button'),
                  Text('Simple Button'),
                ],
              ),
            ),
            InkWell(
              splashColor: Colors.green,
            onTap: () {
              print('Ink Well');
            },
            child: Text('Behave Like Button')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
    
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

