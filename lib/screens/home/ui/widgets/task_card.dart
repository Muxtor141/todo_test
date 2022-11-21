import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/common/widgets/task_slide_action.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/task_single/ui/task_single_screen.dart';
import 'package:test_todo/utils/enum/single_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';
import 'package:test_todo/utils/functions.dart';

class TaskCard extends StatelessWidget {
  final TaskModel model;
  final List<TaskSlideAction>? startSlidableAction;
  final List<TaskSlideAction>? endSlidableAction;
  final Function(TaskModel model) onTapChild;
  final String slideGroupTag;

  const TaskCard(
      {required this.model,
      required this.onTapChild,
      required this.slideGroupTag,
      this.startSlidableAction,
      this.endSlidableAction,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        groupTag: slideGroupTag,
        key: ValueKey(model.id),
        startActionPane:
            startSlidableAction == null || startSlidableAction!.isEmpty
                ? null
                : ActionPane(
                    extentRatio: 0.15,
                    motion: const ScrollMotion(),
                    children: startSlidableAction!,
                  ),
        endActionPane: endSlidableAction == null || endSlidableAction!.isEmpty
            ? null
            : ActionPane(
                extentRatio: 0.15,
                motion: const ScrollMotion(),
                children: endSlidableAction!,
              ),
        child: GestureDetector(
          onTap: () {
            onTapChild(model);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  height: 1,
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      model.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      safeDate(model.createdAt, 'dd/MM/yyyy hh:mm',),
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w400,color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        model.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:Theme.of(context)
                            .textTheme
                            .headline3!
                            .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      );
}
