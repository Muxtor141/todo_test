// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTasksEventCopyWith<$Res> {
  factory $ActiveTasksEventCopyWith(
          ActiveTasksEvent value, $Res Function(ActiveTasksEvent) then) =
      _$ActiveTasksEventCopyWithImpl<$Res, ActiveTasksEvent>;
}

/// @nodoc
class _$ActiveTasksEventCopyWithImpl<$Res, $Val extends ActiveTasksEvent>
    implements $ActiveTasksEventCopyWith<$Res> {
  _$ActiveTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTasksCopyWith<$Res> {
  factory _$$_GetTasksCopyWith(
          _$_GetTasks value, $Res Function(_$_GetTasks) then) =
      __$$_GetTasksCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$_GetTasksCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_GetTasks>
    implements _$$_GetTasksCopyWith<$Res> {
  __$$_GetTasksCopyWithImpl(
      _$_GetTasks _value, $Res Function(_$_GetTasks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$_GetTasks(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_GetTasks implements _GetTasks {
  _$_GetTasks({this.search});

  @override
  final String? search;

  @override
  String toString() {
    return 'ActiveTasksEvent.getTasks(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTasks &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      __$$_GetTasksCopyWithImpl<_$_GetTasks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return getTasks(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return getTasks?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements ActiveTasksEvent {
  factory _GetTasks({final String? search}) = _$_GetTasks;

  String? get search;
  @JsonKey(ignore: true)
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskCopyWith<$Res> {
  factory _$$_AddTaskCopyWith(
          _$_AddTask value, $Res Function(_$_AddTask) then) =
      __$$_AddTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$_AddTaskCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_AddTask>
    implements _$$_AddTaskCopyWith<$Res> {
  __$$_AddTaskCopyWithImpl(_$_AddTask _value, $Res Function(_$_AddTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_AddTask(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$_AddTask implements _AddTask {
  _$_AddTask({required this.task});

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'ActiveTasksEvent.addTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      __$$_AddTaskCopyWithImpl<_$_AddTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return addTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return addTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return addTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return addTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (addTask != null) {
      return addTask(this);
    }
    return orElse();
  }
}

abstract class _AddTask implements ActiveTasksEvent {
  factory _AddTask({required final TaskModel task}) = _$_AddTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_AddTaskCopyWith<_$_AddTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTaskCopyWith<$Res> {
  factory _$$_UpdateTaskCopyWith(
          _$_UpdateTask value, $Res Function(_$_UpdateTask) then) =
      __$$_UpdateTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel taskModel});
}

/// @nodoc
class __$$_UpdateTaskCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_UpdateTask>
    implements _$$_UpdateTaskCopyWith<$Res> {
  __$$_UpdateTaskCopyWithImpl(
      _$_UpdateTask _value, $Res Function(_$_UpdateTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskModel = null,
  }) {
    return _then(_$_UpdateTask(
      null == taskModel
          ? _value.taskModel
          : taskModel // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$_UpdateTask implements _UpdateTask {
  _$_UpdateTask(this.taskModel);

  @override
  final TaskModel taskModel;

  @override
  String toString() {
    return 'ActiveTasksEvent.updateTask(taskModel: $taskModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTask &&
            (identical(other.taskModel, taskModel) ||
                other.taskModel == taskModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      __$$_UpdateTaskCopyWithImpl<_$_UpdateTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return updateTask(taskModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return updateTask?.call(taskModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(taskModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements ActiveTasksEvent {
  factory _UpdateTask(final TaskModel taskModel) = _$_UpdateTask;

  TaskModel get taskModel;
  @JsonKey(ignore: true)
  _$$_UpdateTaskCopyWith<_$_UpdateTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTaskListCopyWith<$Res> {
  factory _$$_AddTaskListCopyWith(
          _$_AddTaskList value, $Res Function(_$_AddTaskList) then) =
      __$$_AddTaskListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaskModel> taskList});
}

/// @nodoc
class __$$_AddTaskListCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_AddTaskList>
    implements _$$_AddTaskListCopyWith<$Res> {
  __$$_AddTaskListCopyWithImpl(
      _$_AddTaskList _value, $Res Function(_$_AddTaskList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskList = null,
  }) {
    return _then(_$_AddTaskList(
      null == taskList
          ? _value._taskList
          : taskList // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$_AddTaskList implements _AddTaskList {
  _$_AddTaskList(final List<TaskModel> taskList) : _taskList = taskList;

  final List<TaskModel> _taskList;
  @override
  List<TaskModel> get taskList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskList);
  }

  @override
  String toString() {
    return 'ActiveTasksEvent.addTaskList(taskList: $taskList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTaskList &&
            const DeepCollectionEquality().equals(other._taskList, _taskList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_taskList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTaskListCopyWith<_$_AddTaskList> get copyWith =>
      __$$_AddTaskListCopyWithImpl<_$_AddTaskList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return addTaskList(taskList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return addTaskList?.call(taskList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (addTaskList != null) {
      return addTaskList(taskList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return addTaskList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return addTaskList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (addTaskList != null) {
      return addTaskList(this);
    }
    return orElse();
  }
}

abstract class _AddTaskList implements ActiveTasksEvent {
  factory _AddTaskList(final List<TaskModel> taskList) = _$_AddTaskList;

  List<TaskModel> get taskList;
  @JsonKey(ignore: true)
  _$$_AddTaskListCopyWith<_$_AddTaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTaskCopyWith<$Res> {
  factory _$$_DeleteTaskCopyWith(
          _$_DeleteTask value, $Res Function(_$_DeleteTask) then) =
      __$$_DeleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteTaskCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_DeleteTask>
    implements _$$_DeleteTaskCopyWith<$Res> {
  __$$_DeleteTaskCopyWithImpl(
      _$_DeleteTask _value, $Res Function(_$_DeleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteTask(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteTask implements _DeleteTask {
  _$_DeleteTask(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ActiveTasksEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTask &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      __$$_DeleteTaskCopyWithImpl<_$_DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements ActiveTasksEvent {
  factory _DeleteTask(final int id) = _$_DeleteTask;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteTaskCopyWith<_$_DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ArchiveTaskCopyWith<$Res> {
  factory _$$_ArchiveTaskCopyWith(
          _$_ArchiveTask value, $Res Function(_$_ArchiveTask) then) =
      __$$_ArchiveTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$_ArchiveTaskCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_ArchiveTask>
    implements _$$_ArchiveTaskCopyWith<$Res> {
  __$$_ArchiveTaskCopyWithImpl(
      _$_ArchiveTask _value, $Res Function(_$_ArchiveTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_ArchiveTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$_ArchiveTask implements _ArchiveTask {
  _$_ArchiveTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'ActiveTasksEvent.archiveTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArchiveTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchiveTaskCopyWith<_$_ArchiveTask> get copyWith =>
      __$$_ArchiveTaskCopyWithImpl<_$_ArchiveTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return archiveTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return archiveTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (archiveTask != null) {
      return archiveTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return archiveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return archiveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (archiveTask != null) {
      return archiveTask(this);
    }
    return orElse();
  }
}

abstract class _ArchiveTask implements ActiveTasksEvent {
  factory _ArchiveTask(final TaskModel task) = _$_ArchiveTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_ArchiveTaskCopyWith<_$_ArchiveTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompleteTaskCopyWith<$Res> {
  factory _$$_CompleteTaskCopyWith(
          _$_CompleteTask value, $Res Function(_$_CompleteTask) then) =
      __$$_CompleteTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$_CompleteTaskCopyWithImpl<$Res>
    extends _$ActiveTasksEventCopyWithImpl<$Res, _$_CompleteTask>
    implements _$$_CompleteTaskCopyWith<$Res> {
  __$$_CompleteTaskCopyWithImpl(
      _$_CompleteTask _value, $Res Function(_$_CompleteTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_CompleteTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$_CompleteTask implements _CompleteTask {
  _$_CompleteTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'ActiveTasksEvent.completeTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompleteTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      __$$_CompleteTaskCopyWithImpl<_$_CompleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(TaskModel task) addTask,
    required TResult Function(TaskModel taskModel) updateTask,
    required TResult Function(List<TaskModel> taskList) addTaskList,
    required TResult Function(int id) deleteTask,
    required TResult Function(TaskModel task) archiveTask,
    required TResult Function(TaskModel task) completeTask,
  }) {
    return completeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(TaskModel task)? addTask,
    TResult? Function(TaskModel taskModel)? updateTask,
    TResult? Function(List<TaskModel> taskList)? addTaskList,
    TResult? Function(int id)? deleteTask,
    TResult? Function(TaskModel task)? archiveTask,
    TResult? Function(TaskModel task)? completeTask,
  }) {
    return completeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(TaskModel task)? addTask,
    TResult Function(TaskModel taskModel)? updateTask,
    TResult Function(List<TaskModel> taskList)? addTaskList,
    TResult Function(int id)? deleteTask,
    TResult Function(TaskModel task)? archiveTask,
    TResult Function(TaskModel task)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_AddTask value) addTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_AddTaskList value) addTaskList,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ArchiveTask value) archiveTask,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_AddTask value)? addTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_AddTaskList value)? addTaskList,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ArchiveTask value)? archiveTask,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_AddTask value)? addTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_AddTaskList value)? addTaskList,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ArchiveTask value)? archiveTask,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements ActiveTasksEvent {
  factory _CompleteTask(final TaskModel task) = _$_CompleteTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_CompleteTaskCopyWith<_$_CompleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActiveTasksState {
  ActionStatus get status => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveTasksStateCopyWith<ActiveTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveTasksStateCopyWith<$Res> {
  factory $ActiveTasksStateCopyWith(
          ActiveTasksState value, $Res Function(ActiveTasksState) then) =
      _$ActiveTasksStateCopyWithImpl<$Res, ActiveTasksState>;
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class _$ActiveTasksStateCopyWithImpl<$Res, $Val extends ActiveTasksState>
    implements $ActiveTasksStateCopyWith<$Res> {
  _$ActiveTasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveTasksStateCopyWith<$Res>
    implements $ActiveTasksStateCopyWith<$Res> {
  factory _$$_ActiveTasksStateCopyWith(
          _$_ActiveTasksState value, $Res Function(_$_ActiveTasksState) then) =
      __$$_ActiveTasksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class __$$_ActiveTasksStateCopyWithImpl<$Res>
    extends _$ActiveTasksStateCopyWithImpl<$Res, _$_ActiveTasksState>
    implements _$$_ActiveTasksStateCopyWith<$Res> {
  __$$_ActiveTasksStateCopyWithImpl(
      _$_ActiveTasksState _value, $Res Function(_$_ActiveTasksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tasks = null,
  }) {
    return _then(_$_ActiveTasksState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$_ActiveTasksState implements _ActiveTasksState {
  _$_ActiveTasksState(
      {this.status = ActionStatus.pure, final List<TaskModel> tasks = const []})
      : _tasks = tasks;

  @override
  @JsonKey()
  final ActionStatus status;
  final List<TaskModel> _tasks;
  @override
  @JsonKey()
  List<TaskModel> get tasks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'ActiveTasksState(status: $status, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveTasksState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveTasksStateCopyWith<_$_ActiveTasksState> get copyWith =>
      __$$_ActiveTasksStateCopyWithImpl<_$_ActiveTasksState>(this, _$identity);
}

abstract class _ActiveTasksState implements ActiveTasksState {
  factory _ActiveTasksState(
      {final ActionStatus status,
      final List<TaskModel> tasks}) = _$_ActiveTasksState;

  @override
  ActionStatus get status;
  @override
  List<TaskModel> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveTasksStateCopyWith<_$_ActiveTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
