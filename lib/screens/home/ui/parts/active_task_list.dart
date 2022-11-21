import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/common/widgets/popups/cupertino_dialog.dart';
import 'package:test_todo/common/widgets/task_slide_action.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/widgets/task_list.dart';
import 'package:test_todo/screens/task_single/ui/task_single_screen.dart';
import 'package:test_todo/utils/enum/single_status.dart';
import 'package:test_todo/utils/functions.dart';

class ActiveTaskList extends StatelessWidget {
  const ActiveTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocBuilder<ActiveTasksBloc, ActiveTasksState>(
    builder: (context, state) {
      return TaskList(
        onTapChild: (task) {
          Navigator.push(context, CupertinoPageRoute(builder: (c) {
            return TaskSingleScreen(
              isEdit: true,
              task: task,
              action: (model) {
                context
                    .read<ActiveTasksBloc>()
                    .add(ActiveTasksEvent.updateTask(model));
                showBottomSnackBar(context,message: 'Task updated');
              },
            );
          }));
        },
        list: state.tasks,
        endSlidingActions: (task) => [
          TaskSlideAction(
            icon: CupertinoIcons.checkmark_alt,
            onPressed: (slideContext) {
              showIosDialog(context,
                  title: 'Task complete',
                  description:
                      'Completion time will be set with current time',
                  positiveButtonTitle: 'Done',
                  onTapPositive: (dialogContext) {
                context
                    .read<ActiveTasksBloc>()
                    .add(ActiveTasksEvent.completeTask(task));
                context
                    .read<CompletedTasksBloc>()
                    .add(CompletedTasksEvent.getTasks());
                Navigator.pop(dialogContext);
                showBottomSnackBar(context,message: 'Task marked as completed');
              });
            },
          )
        ],
        startSlidingActions: (task) => [
          TaskSlideAction(
            icon: CupertinoIcons.delete,
            onPressed: (slideContext) {
              showIosDialog(context,
                  title: 'Delete',
                  description: 'Do you want to remove this task ?',
                  positiveButtonTitle: 'Confirm',
                  onTapPositive: (dialogContext) {
                context
                    .read<ActiveTasksBloc>()
                    .add(ActiveTasksEvent.archiveTask(task));
                context
                    .read<ArchivedTasksBloc>()
                    .add(ArchivedTasksEvent.getTasks());
                Navigator.pop(dialogContext);
                showBottomSnackBar(context,message: 'Task moved into Archive');
              });
            },
            isNegativeAction: true,
          )
        ],
      );
    },
  );
}
