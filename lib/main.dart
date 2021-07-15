import 'package:flutter/material.dart';
import 'TaskHandler/TaskDisplayer.dart';
import 'imp.dart';

void main() {
  runApp(MaterialApp(
    theme: myTheme,
    home: MyApp(),
  ));
}

// ignore: non_constant_identifier_names
class App {
  App(this.name, this.transform);
  final String name;
  final Widget transform;
}

List<Widget> getApps(List<App> apps, BuildContext context) {
  List<Widget> all = [];
  for (var k in apps) {
    all.add(ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => k.transform),
          );
        },
        child: Text(k.name)));
    all.add(SizedBox(
      height: 10,
    ));
  }
  return all;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar,
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: getApps([
              App("Task Maneger", TaskDisplayer()),
              App("name", MyApp()),
            ], context),
          )),
        ));
  }
}
