import 'package:flutter/material.dart';
import 'package:mytodo_flutter_app/controllers/Task_controller.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskName;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlue,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Add a new task'),
              autofocus: true,
              onChanged: (newValue) {
                newTaskName = newValue;
              },
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Provider.of<TaskController>(context, listen: false)
                    .addTask(name: newTaskName);
                Navigator.pop(context);
              },
              child: Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
