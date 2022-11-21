part of 'archived_tasks_bloc.dart';

@Freezed()
 class ArchivedTasksState with _$ArchivedTasksState {
   factory ArchivedTasksState({
     @Default(ActionStatus.pure) ActionStatus status,
     @Default([]) List<TaskModel> tasks
 })=_ArchivedTasksState;
 }


