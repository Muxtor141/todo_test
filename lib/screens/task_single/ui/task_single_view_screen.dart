import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/common/widgets/popups/cupertino_dialog.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/utils/functions.dart';

class TaskSingleViewScreen extends StatefulWidget {
  final TaskModel task;
  final bool isArchive;

  const TaskSingleViewScreen(
      {required this.task, required this.isArchive, Key? key})
      : super(key: key);

  @override
  State<TaskSingleViewScreen> createState() => _TaskSingleViewScreenState();
}

class _TaskSingleViewScreenState extends State<TaskSingleViewScreen> {
  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (widget.isArchive)
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  showIosDialog(context,
                      title: 'Restore',
                      description: 'This item will be restored to Active Tasks',
                      positiveButtonTitle: 'Confirm',
                      onTapPositive: (dialogContext) {
                    context
                        .read<ArchivedTasksBloc>()
                        .add(ArchivedTasksEvent.restoreTask(widget.task));
                    Navigator.pop(dialogContext);
                    Navigator.pop(context);
                    showBottomSnackBar(context,
                        message: 'Task restored and added to Active list');
                  });
                },
                child: const Icon(
                  CupertinoIcons.arrow_down_doc,
                  size: 22,
                  color: Colors.blue,
                ),
              ),
            const SizedBox(
              width: 25,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                showIosDialog(context,
                    title: 'Delete',
                    description:
                        'You are permanently deleting this item and it can not be restored',
                    positiveButtonTitle: 'Confirm',
                    onTapPositive: (dialogContext) {
                  if (widget.isArchive) {
                    context.read<ArchivedTasksBloc>().add(
                        ArchivedTasksEvent.permanentDelete(widget.task.id));
                  } else {
                    context.read<CompletedTasksBloc>().add(
                        CompletedTasksEvent.permanentDelete(widget.task.id));
                  }
                  Navigator.pop(dialogContext);
                  Navigator.pop(context);
                  showBottomSnackBar(context,
                      message: 'Task permanently deleted');
                });
              },
              child: const Icon(
                CupertinoIcons.delete,
                size: 22,
                color: Colors.blue,
              ),
            )
          ],
        ),
        previousPageTitle: 'Tasks',
      ),
      child: Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + kToolbarHeight,
            left: 8,
            right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.grey[100]),
                  child: Text(safeDate(widget.task.createdAt, 'dd/MM/yy hh:mm'),
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: widget.task.createdAt.isNotEmpty
                              ? Colors.blue[200]
                              : Colors.grey)),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              widget.task.title,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              widget.task.description,
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
            )
          ],
        ),
      ));
}
