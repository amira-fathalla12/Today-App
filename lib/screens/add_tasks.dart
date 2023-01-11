// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_app/models/task_data.dart';
class AddTasks extends StatelessWidget {
  final Function addTaskCallback;
  AddTasks(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String? newTasktitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Add Tasks',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 140, 84, 150),
              fontWeight: FontWeight.bold,
            ),
            ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
              newTasktitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: (){
              Provider.of<TaskData>(context, listen: false).addTask(newTasktitle!);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor:Color.fromARGB(255, 103, 21, 119) 
            )
           ),
        ],
      ),
    );
  }
}