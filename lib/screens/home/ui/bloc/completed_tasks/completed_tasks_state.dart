part of 'completed_tasks_bloc.dart';

@Freezed()
 class CompletedTasksState with _$CompletedTasksState {
  factory CompletedTasksState({
   @Default(ActionStatus.pure) ActionStatus status,
   @Default([]) List<TaskModel> tasks
 })=_CompletedTasksState;
 }


