import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/api/apiClient.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({super.key});

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {

  CallData() async {
    var data =  await TaskListRequest("New");
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
