import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/main.dart';
import 'package:test_todo/utils/enum/action_status.dart';
import 'package:test_todo/utils/enum/task_status.dart';

part 'archived_tasks_event.dart';

part 'archived_tasks_state.dart';

part 'archived_tasks_bloc.freezed.dart';

class ArchivedTasksBloc extends Bloc<ArchivedTasksEvent, ArchivedTasksState> {
  ArchivedTasksBloc() : super(ArchivedTasksState()) {
    on<_GetTasks>((event, emit) {
      var db = objectbox;
      var list = db.getTasksList(TaskStatus.archived.status,search: event.search);
      emit(state.copyWith(tasks: list));
    });
    on<_PermanentDelete>((event, emit) {
      var isDeleted = objectbox.deleteTask(event.id);
      if (isDeleted) {
        add(ArchivedTasksEvent.getTasks());
      }
    });
    on<_RestoreTask>((event, emit) {
      objectbox.update(event.task.copyWith(status: TaskStatus.active.status));
      add(ArchivedTasksEvent.getTasks());
    });
  }
}
