import 'package:flutter/material.dart';
import 'package:today_app/widgets/tasks_title.dart';
import 'package:provider/provider.dart';
import 'package:today_app/models/task_data.dart';

class TasksList extends StatelessWidget {
 
    @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemCount:taskData.tasks.length,
        itemBuilder: (context, index){
          return TaskTitle(
            isChecked: taskData.tasks[index].isDone,
            taskTitle: taskData.tasks[index].name,
            checkboxChange:  (newValue){
              taskData.updateTask(taskData.tasks[index]);
            },
            listTitleDelet: () {
              taskData.deleteTask(taskData.tasks[index]);
            },
            );
        }
        );
      }
    );
  }
}
