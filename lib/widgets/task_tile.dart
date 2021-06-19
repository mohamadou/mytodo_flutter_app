import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function isCheckedCallback;
  final Function deleteTaskCallback;

  TaskTile({
    this.taskName,
    this.isChecked,
    this.isCheckedCallback,
    this.deleteTaskCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlue,
        value: isChecked,
        onChanged: isCheckedCallback,
      ),
      onLongPress: deleteTaskCallback,
    );
  }
}

/*setState(() {
isChecked = value;
});*/

/*class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function checkStateCallback;

  TaskCheckbox({this.checkBoxState, this.checkStateCallback});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkBoxState,
      onChanged: checkStateCallback,
    );
  }
}*/
