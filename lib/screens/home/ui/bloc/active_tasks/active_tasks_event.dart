part of 'active_tasks_bloc.dart';

@Freezed()
 class ActiveTasksEvent with _$ActiveTasksEvent {
   factory ActiveTasksEvent.getTasks({String? search})=_GetTasks;
   factory ActiveTasksEvent.addTask({required TaskModel task})=_AddTask;
   factory ActiveTasksEvent.updateTask(TaskModel taskModel)=_UpdateTask;
   factory ActiveTasksEvent.addTaskList(List<TaskModel> taskList)=_AddTaskList;
   factory ActiveTasksEvent.deleteTask(int id)=_DeleteTask;
   factory ActiveTasksEvent.archiveTask(TaskModel task)=_ArchiveTask;
   factory ActiveTasksEvent.completeTask(TaskModel task)=_CompleteTask;
 }
