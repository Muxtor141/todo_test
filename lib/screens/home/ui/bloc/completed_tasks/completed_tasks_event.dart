part of 'completed_tasks_bloc.dart';
@Freezed()
 class CompletedTasksEvent with _$CompletedTasksEvent  {
  factory CompletedTasksEvent.getTasks({String? search})=_GetTasks;
  factory CompletedTasksEvent.permanentDelete(int id)=_PermanentDelete;
}
