import 'package:flutter/material.dart';
import 'package:to_do_app/screens/components/add_task_button.dart';
import 'package:to_do_app/screens/components/task_list.dart';
import 'package:to_do_app/screens/components/welcome.dart';

class Body extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcome(name:'Dana' , avatar: 'assets/icons/dana.jpeg'),
        AddTaskButton(),
        TaskList(),
      ],

    );

  }
}
