import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/Bloc/bloc/tasks_bloc.dart';
import 'package:todo_app/models/task.dart';

import 'package:todo_app/widget/tasks_list.dart';

class CompletedTasksScreen extends StatelessWidget {
  const CompletedTasksScreen({Key? key}) : super(key: key);
  static const id = 'task_screen';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Chip(
                label: Text(
                  '${state.allTasks.length} Tasks',
                ),
              ),
            ),
            TasksList(taskList: tasksList)
          ],
        );
      },
    );
  }
}
