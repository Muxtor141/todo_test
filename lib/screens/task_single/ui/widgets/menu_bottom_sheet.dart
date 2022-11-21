import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/common/widgets/popups/cupertino_dialog.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';

class MenuBottomSheet extends StatelessWidget {
  final TaskModel task;

  const MenuBottomSheet({required this.task, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              showIosDialog(context,
                  title: 'Task complete',
                  description: 'Completion time will be set with current time',
                  positiveButtonTitle: 'Done', onTapPositive: (dialogContext) {
                context
                    .read<ActiveTasksBloc>()
                    .add(ActiveTasksEvent.completeTask(task));
                context
                    .read<CompletedTasksBloc>()
                    .add(CompletedTasksEvent.getTasks());
                Navigator.popUntil(context, (route) => route.isFirst);
              });
            },
            child: const Text('Complete task'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              showIosDialog(context,
                  title: 'Remove',
                  description: 'Do you want to remove this task from Active?',
                  positiveButtonTitle: 'Confirm',
                  onTapPositive: (dialogContext) {
                context
                    .read<ActiveTasksBloc>()
                    .add(ActiveTasksEvent.archiveTask(task));
                context
                    .read<ArchivedTasksBloc>()
                    .add(ArchivedTasksEvent.getTasks());
                Navigator.popUntil(context, (route) => route.isFirst);
              });
            },
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
      );
}
