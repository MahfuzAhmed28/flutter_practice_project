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
      //home: Text('Home'),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Center(     // Center 1ta matro child rakhte pare
          child: Text('Hello World We are writting our first flutter application',
            //textAlign: TextAlign.right
            //textAlign: TextAlign.center
            //textAlign: TextAlign.left,
            textAlign: TextAlign.justify,
            maxLines: 1,
            style: TextStyle(
            fontSize: 20,
            //color: Color(0xFFF0000),
            color: Colors.red,
            //fontWeight: FontWeight.bold,
            fontWeight: FontWeight.w900,
            letterSpacing: 1,
            height: 1.5,
            //backgroundColor: Colors.black,
            wordSpacing: 0,
            //decoration: TextDecoration.lineThrough,
            //decoration: TextDecoration.overline,
              //overflow: TextOverflow.fade,
              overflow: TextOverflow.ellipsis,
              decoration: TextDecoration.none,
          ),),
        ),
      ),
      //title: ='Welcome to Flutter',
    );
  }

}
