import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/core/assets/colors.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/widgets/home_appbar.dart';
import 'package:test_todo/screens/home/ui/parts/home_pages.dart';
import 'package:test_todo/screens/home/ui/widgets/tab_sliver.dart';
import 'package:test_todo/screens/home/ui/widgets/task_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/screens/task_single/ui/task_single_screen.dart';
import 'package:test_todo/utils/enum/single_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  late TextEditingController _searchController;
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
    _searchController = TextEditingController();
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: white,
            child: const Icon(
              CupertinoIcons.square_pencil,
              color: primaryColor,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (c) => TaskSingleScreen(
                            isEdit: false,
                            action: (TaskModel model) {
                              context
                                  .read<ActiveTasksBloc>()
                                  .add(ActiveTasksEvent.addTask(task: model));
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'New task created successfully')));
                            },
                          )));
            },
          ),
          // appBar: HomeAppBar(
          //   controller: _searchController,
          //   pageController: _pageController,
          // ),
          body: NestedScrollView(
            headerSliverBuilder: (c, b) => [
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                stretch: true,
                toolbarHeight: 0,
                backgroundColor: Colors.white,
                elevation: 0,
                expandedHeight: 56,
                collapsedHeight: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).viewPadding.top + 16,
                        bottom: 0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: CupertinoSearchTextField(
                            focusNode: _focusNode,
                            controller: _searchController,
                            onChanged: (text) {
                              if (selectedStatus == TaskStatus.active) {
                                context.read<ActiveTasksBloc>().add(
                                    ActiveTasksEvent.getTasks(search: text));
                              } else if (selectedStatus ==
                                  TaskStatus.completed) {
                                context.read<CompletedTasksBloc>().add(
                                    CompletedTasksEvent.getTasks(search: text));
                              } else {
                                context.read<ArchivedTasksBloc>().add(
                                    ArchivedTasksEvent.getTasks(search: text));
                              }
                            },
                          ),
                        ),
                        if (focused)
                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              _focusNode.unfocus();
                              _searchController.clear();
                              if (selectedStatus == TaskStatus.active) {
                                context
                                    .read<ActiveTasksBloc>()
                                    .add(ActiveTasksEvent.getTasks(search: ''));
                              } else if (selectedStatus ==
                                  TaskStatus.completed) {
                                context.read<CompletedTasksBloc>().add(
                                    CompletedTasksEvent.getTasks(search: ''));
                              } else {
                                context.read<ArchivedTasksBloc>().add(
                                    ArchivedTasksEvent.getTasks(search: ''));
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text('Cancel',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4!
                                      .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                            ),
                          ),
                        const SizedBox(
                          width: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverPersistentHeader(
                  pinned: true,
                  delegate: MySliverTabBar(
                      taskStatus: selectedStatus,
                      controller: _searchController,
                      pageController: _pageController,
                      onChangeStatus: (TaskStatus status) {
                        setState(() {
                          selectedStatus = status;
                        });
                      })),
            ],
            body: HomePages(
              onPageChanged: (index) {
                if (index == 0) {
                  context.read<ActiveTasksBloc>().add(
                      ActiveTasksEvent.getTasks(search: _searchController.text));
                  setState(() {
                    selectedStatus = TaskStatus.active;
                  });
                } else if (index == 1) {
                  context.read<CompletedTasksBloc>().add(
                      CompletedTasksEvent.getTasks(search: _searchController.text));
                  setState(() {
                    selectedStatus = TaskStatus.completed;
                  });
                } else {
                  context.read<ArchivedTasksBloc>().add(
                      ArchivedTasksEvent.getTasks(search: _searchController.text));
                  setState(() {
                    selectedStatus = TaskStatus.archived;
                  });
                }
              },
              pageController: _pageController,
            ),
          ),
        ),
      );
}
