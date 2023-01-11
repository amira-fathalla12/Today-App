// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
 
 
class TaskTitle extends StatelessWidget {
    final bool isChecked;
    final String taskTitle;
    final void Function(bool?) checkboxChange;
    final void Function() listTitleDelet;
    TaskTitle({
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTitleDelet,
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null),
        ),
      trailing:Checkbox(
      activeColor:  Color.fromARGB(255, 224, 194, 230),
      value: isChecked,
      onChanged:checkboxChange ,
      ),
      onLongPress: listTitleDelet,
    );
  }
}
  
