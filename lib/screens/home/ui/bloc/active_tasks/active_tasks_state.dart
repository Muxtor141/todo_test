part of 'active_tasks_bloc.dart';

@Freezed()
 class ActiveTasksState with _$ActiveTasksState {
  factory ActiveTasksState({
    @Default(ActionStatus.pure) ActionStatus status,
    @Default([]) List<TaskModel> tasks,

})=_ActiveTasksState;
}


