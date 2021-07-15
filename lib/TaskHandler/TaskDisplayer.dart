import 'package:akjapp/TaskHandler/Task.dart';
import 'package:akjapp/imp.dart';
import 'package:flutter/material.dart';

class TaskDisplayer extends StatefulWidget {
  @override
  _TaskDisplayerState createState() => _TaskDisplayerState();
}

class _TaskDisplayerState extends State<TaskDisplayer> {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppbar,
        body: ListView(
          children: getTasklist(tasks),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TaskAdder(
                        tasks: [],
                        callback: () {
                          setState(() {});
                        },
                      )),
            );
          },
          child: Icon(Icons.add),
        ));
  }
}

class TaskAdder extends StatelessWidget {
  TaskAdder({
    required this.tasks,
    required this.callback,
  });
  List<Task> tasks;
  VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("Go Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
