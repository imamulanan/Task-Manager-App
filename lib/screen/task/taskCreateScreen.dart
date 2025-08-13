import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Style/Style.dart';
import '../../api/apiClient.dart';

class taskCreateScreen extends StatefulWidget {
  const taskCreateScreen({super.key});

  @override
  State<taskCreateScreen> createState() => _taskCreateScreenState();
}

class _taskCreateScreenState extends State<taskCreateScreen> {

  Map<String,String> FormValues={"title":"", "description":"","status":"New"};
  bool Loading=false;

  InputOnChange(MapKey, Textvalue){
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async{
    if(FormValues['title']!.length==0){
      ErrorToast('Title Required !');
    }
    else if(FormValues['description']!.length==0){
      ErrorToast('Description Required !');
    }
    else{
      setState(() {Loading=true;});
      bool res=await TaskCreateRequest(FormValues);
      if(res==true){
        Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
      }
      else{
        setState(() {Loading=false;});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: colorGreen, title: Text('Create New Task')),
    );
  }
}
