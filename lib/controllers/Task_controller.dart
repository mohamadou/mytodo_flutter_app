import 'package:mytodo_flutter_app/models/Task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskController extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'Go to hospital'),
    Task(name: 'Send mail to Deessy'),
    Task(name: 'Develop Module Ui'),
    Task(name: 'Call with Louis'),
  ];

  void addTask({name}) {
    Task task = Task(name: name);
    _taskList.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTasks {
    return UnmodifiableListView(_taskList);
  }

  void updateTaskState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
