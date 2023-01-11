import 'package:flutter/material.dart';
import 'package:today_app/models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks =[
    Task(name: 'go shopping'),
    Task(name: 'buy a dresses'),
    Task(name: 'go school'),
  ];
  void addTask(String newTasktitle){
    tasks.add(Task(name: newTasktitle));
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}