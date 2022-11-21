import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/common/widgets/task_slide_action.dart';
import 'package:test_todo/screens/home/ui/widgets/task_card.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> list;
  final List<TaskSlideAction> Function(TaskModel task)? startSlidingActions;
  final List<TaskSlideAction> Function(TaskModel task)? endSlidingActions;
  final Function(TaskModel task) onTapChild;
  final String? slidableGroupTag;


  const TaskList(
      {required this.list,
        this.slidableGroupTag,
      required  this.onTapChild,
      this.startSlidingActions,
      this.endSlidingActions,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty) {
      return const Center(
        child: Text('No tasks available'),
      );
    } else {
      return SlidableAutoCloseBehavior(
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 16),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return TaskCard(slideGroupTag: slidableGroupTag??'',
                onTapChild: onTapChild,
                endSlidableAction: endSlidingActions == null
                    ? null
                    : endSlidingActions!(list[index]),
                startSlidableAction: startSlidingActions == null
                    ? null
                    : startSlidingActions!(list[index]),
                model: list[index],
              );
            }),
      );
    }
  }
}
