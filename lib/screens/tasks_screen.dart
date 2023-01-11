// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:today_app/models/task.dart';
import 'package:today_app/models/task_data.dart';
import 'package:today_app/screens/add_tasks.dart';
import 'package:today_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTasks((newTasktitle){
                  //setState(() {
                     //tasks.add(Task(name: newTasktitle));
                     //Navigator.pop(context);
                  //});
                }),
                ),
                ),
          );
        },
        backgroundColor: Color.fromARGB(255, 140, 84, 150),
        child: Icon(Icons.add),
        ),
      backgroundColor:  Color.fromARGB(255, 224, 194, 230),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
             ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables, duplicate_ignore
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                  ),
                Text('ToDayy', style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )
                  ),
                  child: TasksList(),
                ),
              )
          ]),
      ),
    );
  }
}

