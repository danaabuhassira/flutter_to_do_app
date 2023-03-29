import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/providers/task_provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();


    return Expanded(
      child: Container(
        child: Container(
          child: ListView.builder(
              itemCount:taskProvider.tasks.length,
              itemBuilder: (context , index) {
                return Container(
                  child: Dismissible(
                    key: Key(index.toString()),
                    background: Container(
                      color: Theme.of(context).errorColor,
                      child: Icon(
                          Icons.delete,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 20.0),
                    ),


                    direction: DismissDirection.endToStart,

                    onDismissed: (direction){
                      taskProvider.removeTask(index);
                  },

                    child: ListTile(
                      title: Text(taskProvider.tasks[index].title ,
                      style:
                        TextStyle(color: Colors.black , fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                        image: taskProvider.tasks[index].completed
                            ?  AssetImage('assets/icons/completed.png')
                            :  AssetImage('assets/icons/non-completed.png'),
                      ),
                      onTap: (){
                        taskProvider.makeTaskCompleted(index);
                      },
                    ),
                  ),
                );

              },

          ),
        ),

        margin: EdgeInsets.only(left: 16.0 , right: 16.0),
      ),
      flex: 5,
    );
  }
}
