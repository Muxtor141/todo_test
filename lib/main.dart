import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_todo/core/storage/todo_box.dart';
import 'package:test_todo/screens/home/ui/bloc/active_tasks/active_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/archived_tasks/archived_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/bloc/completed_tasks/completed_tasks_bloc.dart';
import 'package:test_todo/screens/home/ui/home_screen.dart';

late TodoBox objectbox;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  objectbox = await TodoBox.create();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (c) => ActiveTasksBloc()..add(ActiveTasksEvent.getTasks())),
        BlocProvider(
            create: (c) => ArchivedTasksBloc()..add(ArchivedTasksEvent.getTasks())),
        BlocProvider(
            create: (c) => CompletedTasksBloc()..add(CompletedTasksEvent.getTasks()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',

        home: HomeScreen(),
      ),
    );
  }
}
