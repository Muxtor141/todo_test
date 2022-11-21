import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/utils/enum/task_status.dart';

class MySliverTabBar extends SliverPersistentHeaderDelegate {
  final TaskStatus taskStatus;
  final TextEditingController controller;
  final PageController pageController;
  final Function(TaskStatus status) onChangeStatus;

  MySliverTabBar(
      {required this.taskStatus,
      required this.onChangeStatus,
      required this.controller,
      required this.pageController});

  int animationDuration = 200;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: Row(
        children:[
          Expanded(
            child: CupertinoSegmentedControl(
                groupValue: taskStatus,
                children: const <TaskStatus, Widget>{
                  TaskStatus.active: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Active'),
                  ),
                  TaskStatus.completed: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Completed'),
                  ),
                  TaskStatus.archived: Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('Archived'),
                  ),
                },
                onValueChanged: (TaskStatus status) {
                  onChangeStatus(status);
                  // setState(() {
                  //   selectedStatus = status;
                  // });

                  if (status == TaskStatus.active) {
                    context.read<ActiveTasksBloc>().add(
                        ActiveTasksEvent.getTasks(search: controller.text));
                    pageController.animateToPage(0,
                        duration: Duration(milliseconds: animationDuration),
                        curve: Curves.fastLinearToSlowEaseIn);
                  } else if (status == TaskStatus.completed) {
                    context.read<CompletedTasksBloc>().add(
                        CompletedTasksEvent.getTasks(search: controller.text));
                    pageController.animateToPage(1,
                        duration: Duration(milliseconds: animationDuration),
                        curve: Curves.fastLinearToSlowEaseIn);
                  } else {
                    context.read<ArchivedTasksBloc>().add(
                        ArchivedTasksEvent.getTasks(search: controller.text));
                    pageController.animateToPage(2,
                        duration: Duration(milliseconds: animationDuration),
                        curve: Curves.fastLinearToSlowEaseIn);
                  }
                }),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 53;

  @override
  double get minExtent => 53;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
