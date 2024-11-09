import 'package:flutter/material.dart';

void main()
{
  runApp(SimpleApp());
}
class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      /*initialRoute: '/home',
      routes: {
        '/home': (context) =>Home(),
        '/profile': (context) =>Profile(),
        '/setting': (context) =>Setting()
      },*/
      home: CounterScreen(),
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
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              /*Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile()));*/
              //Navigator.pushNamed(context, '/profile');
              Navigator.pushReplacementNamed(context, '/profile');
              },

            child: Text('Goto Profile'))
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              /*Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Setting()));*/
              Navigator.pushReplacementNamed(context, '/setting');
            },
            child: Text('Settings'))
        ],
      ),
    );
  }
}


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              //Navigator.pushNamed(context, '/home');
              Navigator.pushNamedAndRemoveUntil(context, '/home', (predicate)=>false);
            },
            child: Text('Home'))
        ],
      ),
    );
  }
}

/*class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
          child: Text('Counter Value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {counter++;},child: Icon(Icons.add),),
    );
  }
}*/


class CounterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen>
{
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('Counter Value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter=counter+1;
          print(counter);
          setState(() {});
        },
        child: const Icon(Icons.add),),//cost use korle seti r rebuild hobe na
    );
  }

}


