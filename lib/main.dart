import 'package:flutter/material.dart';
import 'package:mytodo_flutter_app/controllers/Task_controller.dart';
import 'package:mytodo_flutter_app/services/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskController(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskScreenPage(title: 'My Todo App'),
      ),
    );
  }
}
