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
        
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),
        /*body: Image.asset('assets/images/shoe.jpg',
        width: 400,
        height: 400,
        fit: BoxFit.scaleDown,
        //fit:BoxFit.cover, Cover by zoom
        //fit: BoxFit.fitHeight,
        //fit: BoxFit.fitWidth,
        //fit: BoxFit.contain,
        //color: Colors.red,
        //color: Colors.red.shade50,
        alignment: Alignment.bottomCenter,),*/
        body: Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
        width: 200,
        height: 400,
        fit: BoxFit.cover,),
      ),
      //title: ='Welcome to Flutter',
    );
  }

}
