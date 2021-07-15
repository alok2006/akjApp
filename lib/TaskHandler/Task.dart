import 'package:flutter/material.dart';

enum Types { Programming, DailyWorks, School }

class Task {
  Task(
      {this.type = Types.DailyWorks,
      required this.title,
      required this.desc,
      this.prioroty = 1,
      required this.dateTime});

  final Types type;
  final String title;
  final String desc;
  final int prioroty;
  final DateTime dateTime;
  late int cost;
}

ListTile getTask(Task task) {
  return ListTile(
    leading: CircleAvatar(
      child: Text(task.cost.toString()),
    ),
    title: Text(task.title),
  );
}

List<Widget> getTasklist(List<Task> tasks) {
  List<Widget> all = [];
  for (var task in tasks) {
    all.add(getTask(task));
  }
  return all;
}
