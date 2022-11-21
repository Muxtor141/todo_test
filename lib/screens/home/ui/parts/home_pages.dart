import 'package:flutter/cupertino.dart';
import 'package:test_todo/screens/home/ui/parts/active_task_list.dart';
import 'package:test_todo/screens/home/ui/parts/archived_task_list.dart';
import 'package:test_todo/screens/home/ui/parts/completed_tasks_list.dart';

class HomePages extends StatelessWidget {
  final PageController pageController;

  const HomePages({required this.pageController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PageView(
        controller: pageController,
        children: const [
          ActiveTaskList(),
          CompletedTaskList(),
          ArchivedTaskList(),
        ],
      );
}
