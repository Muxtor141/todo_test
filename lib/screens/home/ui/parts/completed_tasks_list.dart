import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/common/widgets/popups/cupertino_dialog.dart';
import 'package:test_todo/common/widgets/task_slide_action.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/widgets/task_list.dart';
import 'package:test_todo/screens/task_single/ui/task_single_view_screen.dart';
import 'package:test_todo/utils/functions.dart';

class CompletedTaskList extends StatelessWidget {
  const CompletedTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CompletedTasksBloc, CompletedTasksState>(
        builder: (context, state) {
          return TaskList(
            startSlidingActions: (task) => [
              TaskSlideAction(
                isNegativeAction: true,
                icon: CupertinoIcons.delete,
                onPressed: (slideContext) {
                  showIosDialog(context,
                      title: 'Delete',
                      description:
                          'You are permanently deleting this item and it can not be restored',
                      positiveButtonTitle: 'Confirm',
                      onTapPositive: (dialogContext) {
                    context
                        .read<CompletedTasksBloc>()
                        .add(CompletedTasksEvent.permanentDelete(task.id));

                    Navigator.pop(dialogContext);
                    showBottomSnackBar(context,
                        message: 'Task permanently deleted');
                  });
                },
              )
            ],
            list: state.tasks,
            onTapChild: (TaskModel task) {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context1) =>
                          TaskSingleViewScreen(task: task, isArchive: false)));
            },
          );
        },
      );
}
