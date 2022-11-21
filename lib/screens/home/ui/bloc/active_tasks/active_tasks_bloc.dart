import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/main.dart';
import 'package:test_todo/utils/enum/action_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';

part 'active_tasks_event.dart';

part 'active_tasks_state.dart';

part 'active_tasks_bloc.freezed.dart';

class ActiveTasksBloc extends Bloc<ActiveTasksEvent, ActiveTasksState> {
  late StreamSubscription taskSubscription;

  ActiveTasksBloc() : super(ActiveTasksState()) {
    on<_GetTasks>((event, emit) {
      var db = objectbox;
      var taskStream = db.getTaskListStream(TaskStatus.active.status,search: event.search);
      taskSubscription = taskStream.listen((list) {
        add(ActiveTasksEvent.addTaskList(list));
      });
    });
    on<_AddTask>((event, emit) {
      objectbox.insertTask(event.task);
    });
    on<_DeleteTask>((event, emit) {
      objectbox.deleteTask(event.id);
    });
    on<_UpdateTask>((event, emit) {
      objectbox.update(event.taskModel);
    });
    on<_AddTaskList>((event, emit) {
      emit(state.copyWith(tasks: event.taskList));
    });
    on<_ArchiveTask>((event, emit) {
      objectbox.update(event.task.copyWith(status: TaskStatus.archived.status));
    });
    on<_CompleteTask>((event, emit) {
      objectbox.update(event.task.copyWith(status: TaskStatus.completed.status));
    });
  }
}
