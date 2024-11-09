import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CupertinoExperiment());
}

class CupertinoExperiment extends StatelessWidget {
  const CupertinoExperiment({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Experiment',
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Hello'),
        trailing: Icon(CupertinoIcons.add),
        leading: Icon(CupertinoIcons.airplane),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton.filled(
            borderRadius: BorderRadius.circular(18),
            child: Text('Tap Here'), onPressed: () {}),
          CupertinoListTile(
            onTap: () {},
            title: Text('List'),
            backgroundColor: CupertinoColors.systemPurple,
            subtitle: Text('Text'),
            trailing: Icon(CupertinoIcons.airplane),
          ),
          CupertinoTextField(),
          CupertinoSwitch(value: false, onChanged: (value) {})
        ],
      ),
    );
  }
}



