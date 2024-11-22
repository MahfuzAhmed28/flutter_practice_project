
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize=MediaQuery.of(context).size;
    //Size screenSize=MediaQuery.sizeOf(context);
    print(screenSize.height);
    print(screenSize.width);
    print(screenSize.flipped);
    print(screenSize.aspectRatio);
    print(screenSize.shortestSide);
    print(screenSize.longestSide);
    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).orientation);
    return Scaffold(
      backgroundColor: Colors.black26,
      /*appBar: AppBar(
        title: Text('Hello'),
      ),*/
      /*body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            alignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
              ElevatedButton(onPressed: () {}, child: Text('Button')),
            ],
          )
        ],
      ),*/
      /*body: LayoutBuilder(
          builder: (BuildContext context,BoxConstraints constraints){
            return Center(
              child: Text('${constraints.maxHeight} ${constraints.maxWidth}'),
            );
          }
      )*/
      body: OrientationBuilder(
        builder: (context,orientation){
          return Center(child: Text('${orientation}'));
        }
      )


    );
  }
}






