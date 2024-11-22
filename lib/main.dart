
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
    
    return Scaffold(
      backgroundColor: Colors.black26,
      /*appBar: AppBar(
        title: Text('Hello'),
      ),*/
      /*body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: ColoredBox(
              color: Colors.black,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 0.7,
                //alignment: Alignment.topCenter,
                alignment: Alignment(4,3),
                child: ColoredBox(color: Colors.red),
              ),
            )
          ),

          
        ],
      ),*/
      /*body: AspectRatio(
        aspectRatio: 16/9,
        child: ColoredBox(color: Colors.orange),

      ),*/
      /*body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: SizedBox(
              width: double.maxFinite,
              height: 100,
              child: ColoredBox(color: Colors.black)
            ),
          ),
          Expanded(
            child: SizedBox(
                width: double.maxFinite,
                height: 100,
                child: ColoredBox(color: Colors.orange)
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: SizedBox(
                width: double.maxFinite,
                height: 100,
                child: ColoredBox(color: Colors.red)
            ),
          ),
        ],
      ),*/
      body: SafeArea(
        top: true,
        child: Tooltip(
          message: 'HHHH',
          exitDuration: Duration(seconds: 2),
          triggerMode: TooltipTriggerMode.tap,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  child: ColoredBox(color: Colors.red),
                )
              ),
              Expanded(
                flex: 2,
                  child: Container(
                    height: 100,
                    child: ColoredBox(color: Colors.green),
                  )
              ),
              Expanded(
                  child: Container(
                    height: 100,
                    child: ColoredBox(color: Colors.yellowAccent),
                  )
              ),
            ],
          ),
        ),
      ),





    );
  }
}






