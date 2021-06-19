import 'package:flutter/material.dart';
import 'package:mytodo_flutter_app/controllers/Task_controller.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

TaskController taskController = TaskController();

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.getTasks.length,
          itemBuilder: (context, index) {
            final taskItem = taskData.getTasks[index];
            return TaskTile(
              taskName: taskItem.name,
              isChecked: taskItem.isDone,
              isCheckedCallback: (value) {
                taskData.updateTaskState(taskItem);
              },
              deleteTaskCallback: () {
                taskData.deleteTask(taskItem);
              },
            );
          },
        );
      },
    );
  }
}
