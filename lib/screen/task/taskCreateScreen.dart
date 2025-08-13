import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/Style.dart';

class taskCreateScreen extends StatefulWidget {
  const taskCreateScreen({super.key});

  @override
  State<taskCreateScreen> createState() => _taskCreateScreenState();
}

class _taskCreateScreenState extends State<taskCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: colorGreen, title: Text('Create New Task')),
    );
  }
}
