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

        /*body: Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
        width: 200,
        height: 400,
        fit: BoxFit.cover,),*/

        /*body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello'),
            Text('World'),
            Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
            width: 200,
            height: 300,
            fit: BoxFit.cover,),
            Text('This is Shoe pic')
          ],
        ),*/
        /*body: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,  4 kore
          mainAxisAlignment: MainAxisAlignment.spaceAround,  // 2 kore sob pase
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,  //mainAxisAlignment k override kore
          children: [
            Text('Hello'),
            Text('Another'),
            Text('World'),
            Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
              width: 100,),
            Text('Shoe'),
          ],
        )*/
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Row(
              children: [
                Text('Hello'),
                Text('World'),
                Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
                  width: 100,
                  fit: BoxFit.cover,),
                Text('Shoe'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network('https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg',
                  width: 100,
                  fit: BoxFit.cover,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('This'),
                    Text('is'),
                    Text('Nike new Version'),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      //title: ='Welcome to Flutter',
    );
  }

}
