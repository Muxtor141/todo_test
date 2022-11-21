import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/main.dart';
import 'package:test_todo/utils/enum/action_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';

import '../archived_tasks/archived_tasks_bloc.dart';

part 'completed_tasks_event.dart';

part 'completed_tasks_state.dart';

part 'completed_tasks_bloc.freezed.dart';

class CompletedTasksBloc
    extends Bloc<CompletedTasksEvent, CompletedTasksState> {
  CompletedTasksBloc() : super(CompletedTasksState()) {
    on<_GetTasks>((event, emit) {
      var db = objectbox;
      var list =
          db.getTasksList(TaskStatus.completed.status, search: event.search);
      emit(state.copyWith(tasks: list));
    });
    on<_PermanentDelete>((event, emit) {
      var isDeleted = objectbox.deleteTask(event.id);
      if (isDeleted) {
        add(CompletedTasksEvent.getTasks());
      }
    });
  }
}
