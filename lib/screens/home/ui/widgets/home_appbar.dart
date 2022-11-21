import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/utils/enum/task_status.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final PageController pageController;
  final TextEditingController controller;

  const HomeAppBar(
      {required this.pageController, required this.controller, Key? key})
      : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(103);
}

class _HomeAppBarState extends State<HomeAppBar> {
  TaskStatus selectedStatus = TaskStatus.active;
  late FocusNode _focusNode;
  int animationDuration = 200;
  bool focused = false;

  @override
  void initState() {
    _focusNode = FocusNode()
      ..addListener(() {
        if (_focusNode.hasFocus) {
          setState(() {
            focused = true;
          });
        } else {
          setState(() {
            focused = false;
          });
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 103,
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 20),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: CupertinoSearchTextField(
                    focusNode: _focusNode,
                    controller: widget.controller,
                    onChanged: (text) {
                      if (selectedStatus == TaskStatus.active) {
                        context
                            .read<ActiveTasksBloc>()
                            .add(ActiveTasksEvent.getTasks(search: text));
                      } else if (selectedStatus == TaskStatus.completed) {
                        context
                            .read<CompletedTasksBloc>()
                            .add(CompletedTasksEvent.getTasks(search: text));
                      } else {
                        context
                            .read<ArchivedTasksBloc>()
                            .add(ArchivedTasksEvent.getTasks(search: text));
                      }
                    },
                  ),
                ),
                if (focused)
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _focusNode.unfocus();
                      widget.controller.clear();
                      if (selectedStatus == TaskStatus.active) {
                        context
                            .read<ActiveTasksBloc>()
                            .add(ActiveTasksEvent.getTasks(search: ''));
                      } else if (selectedStatus == TaskStatus.completed) {
                        context
                            .read<CompletedTasksBloc>()
                            .add(CompletedTasksEvent.getTasks(search: ''));
                      } else {
                        context
                            .read<ArchivedTasksBloc>()
                            .add(ArchivedTasksEvent.getTasks(search: ''));
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Expanded(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: CupertinoSegmentedControl(
                      groupValue: selectedStatus,
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
                        setState(() {
                          selectedStatus = status;
                        });

                        if (status == TaskStatus.active) {
                          context.read<ActiveTasksBloc>().add(
                              ActiveTasksEvent.getTasks(
                                  search: widget.controller.text));
                          widget.pageController.animateToPage(0,
                              duration:
                                  Duration(milliseconds: animationDuration),
                              curve: Curves.fastLinearToSlowEaseIn);
                        } else if (status == TaskStatus.completed) {
                          context.read<CompletedTasksBloc>().add(
                              CompletedTasksEvent.getTasks(
                                  search: widget.controller.text));
                          widget.pageController.animateToPage(1,
                              duration:
                                  Duration(milliseconds: animationDuration),
                              curve: Curves.fastLinearToSlowEaseIn);
                        } else {
                          context.read<ArchivedTasksBloc>().add(
                              ArchivedTasksEvent.getTasks(
                                  search: widget.controller.text));
                          widget.pageController.animateToPage(2,
                              duration:
                                  Duration(milliseconds: animationDuration),
                              curve: Curves.fastLinearToSlowEaseIn);
                        }
                      }),
                ),
              ],
            )
          ],
        ),
      );
}
