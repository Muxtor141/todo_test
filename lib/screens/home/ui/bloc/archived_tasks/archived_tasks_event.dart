part of 'archived_tasks_bloc.dart';
@Freezed()
 class ArchivedTasksEvent with _$ArchivedTasksEvent {
  factory ArchivedTasksEvent.permanentDelete(int id )=_PermanentDelete;
  factory ArchivedTasksEvent.restoreTask(TaskModel task)=_RestoreTask;
  factory ArchivedTasksEvent.getTasks({String? search})=_GetTasks;
}
