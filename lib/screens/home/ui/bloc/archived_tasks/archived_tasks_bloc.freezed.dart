// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'archived_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArchivedTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) permanentDelete,
    required TResult Function(TaskModel task) restoreTask,
    required TResult Function(String? search) getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? permanentDelete,
    TResult? Function(TaskModel task)? restoreTask,
    TResult? Function(String? search)? getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? permanentDelete,
    TResult Function(TaskModel task)? restoreTask,
    TResult Function(String? search)? getTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermanentDelete value) permanentDelete,
    required TResult Function(_RestoreTask value) restoreTask,
    required TResult Function(_GetTasks value) getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermanentDelete value)? permanentDelete,
    TResult? Function(_RestoreTask value)? restoreTask,
    TResult? Function(_GetTasks value)? getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermanentDelete value)? permanentDelete,
    TResult Function(_RestoreTask value)? restoreTask,
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchivedTasksEventCopyWith<$Res> {
  factory $ArchivedTasksEventCopyWith(
          ArchivedTasksEvent value, $Res Function(ArchivedTasksEvent) then) =
      _$ArchivedTasksEventCopyWithImpl<$Res, ArchivedTasksEvent>;
}

/// @nodoc
class _$ArchivedTasksEventCopyWithImpl<$Res, $Val extends ArchivedTasksEvent>
    implements $ArchivedTasksEventCopyWith<$Res> {
  _$ArchivedTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PermanentDeleteCopyWith<$Res> {
  factory _$$_PermanentDeleteCopyWith(
          _$_PermanentDelete value, $Res Function(_$_PermanentDelete) then) =
      __$$_PermanentDeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_PermanentDeleteCopyWithImpl<$Res>
    extends _$ArchivedTasksEventCopyWithImpl<$Res, _$_PermanentDelete>
    implements _$$_PermanentDeleteCopyWith<$Res> {
  __$$_PermanentDeleteCopyWithImpl(
      _$_PermanentDelete _value, $Res Function(_$_PermanentDelete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_PermanentDelete(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PermanentDelete implements _PermanentDelete {
  _$_PermanentDelete(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ArchivedTasksEvent.permanentDelete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PermanentDelete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PermanentDeleteCopyWith<_$_PermanentDelete> get copyWith =>
      __$$_PermanentDeleteCopyWithImpl<_$_PermanentDelete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) permanentDelete,
    required TResult Function(TaskModel task) restoreTask,
    required TResult Function(String? search) getTasks,
  }) {
    return permanentDelete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? permanentDelete,
    TResult? Function(TaskModel task)? restoreTask,
    TResult? Function(String? search)? getTasks,
  }) {
    return permanentDelete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? permanentDelete,
    TResult Function(TaskModel task)? restoreTask,
    TResult Function(String? search)? getTasks,
    required TResult orElse(),
  }) {
    if (permanentDelete != null) {
      return permanentDelete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermanentDelete value) permanentDelete,
    required TResult Function(_RestoreTask value) restoreTask,
    required TResult Function(_GetTasks value) getTasks,
  }) {
    return permanentDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermanentDelete value)? permanentDelete,
    TResult? Function(_RestoreTask value)? restoreTask,
    TResult? Function(_GetTasks value)? getTasks,
  }) {
    return permanentDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermanentDelete value)? permanentDelete,
    TResult Function(_RestoreTask value)? restoreTask,
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) {
    if (permanentDelete != null) {
      return permanentDelete(this);
    }
    return orElse();
  }
}

abstract class _PermanentDelete implements ArchivedTasksEvent {
  factory _PermanentDelete(final int id) = _$_PermanentDelete;

  int get id;
  @JsonKey(ignore: true)
  _$$_PermanentDeleteCopyWith<_$_PermanentDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RestoreTaskCopyWith<$Res> {
  factory _$$_RestoreTaskCopyWith(
          _$_RestoreTask value, $Res Function(_$_RestoreTask) then) =
      __$$_RestoreTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$_RestoreTaskCopyWithImpl<$Res>
    extends _$ArchivedTasksEventCopyWithImpl<$Res, _$_RestoreTask>
    implements _$$_RestoreTaskCopyWith<$Res> {
  __$$_RestoreTaskCopyWithImpl(
      _$_RestoreTask _value, $Res Function(_$_RestoreTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$_RestoreTask(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$_RestoreTask implements _RestoreTask {
  _$_RestoreTask(this.task);

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'ArchivedTasksEvent.restoreTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestoreTask &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestoreTaskCopyWith<_$_RestoreTask> get copyWith =>
      __$$_RestoreTaskCopyWithImpl<_$_RestoreTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) permanentDelete,
    required TResult Function(TaskModel task) restoreTask,
    required TResult Function(String? search) getTasks,
  }) {
    return restoreTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? permanentDelete,
    TResult? Function(TaskModel task)? restoreTask,
    TResult? Function(String? search)? getTasks,
  }) {
    return restoreTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? permanentDelete,
    TResult Function(TaskModel task)? restoreTask,
    TResult Function(String? search)? getTasks,
    required TResult orElse(),
  }) {
    if (restoreTask != null) {
      return restoreTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermanentDelete value) permanentDelete,
    required TResult Function(_RestoreTask value) restoreTask,
    required TResult Function(_GetTasks value) getTasks,
  }) {
    return restoreTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermanentDelete value)? permanentDelete,
    TResult? Function(_RestoreTask value)? restoreTask,
    TResult? Function(_GetTasks value)? getTasks,
  }) {
    return restoreTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermanentDelete value)? permanentDelete,
    TResult Function(_RestoreTask value)? restoreTask,
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) {
    if (restoreTask != null) {
      return restoreTask(this);
    }
    return orElse();
  }
}

abstract class _RestoreTask implements ArchivedTasksEvent {
  factory _RestoreTask(final TaskModel task) = _$_RestoreTask;

  TaskModel get task;
  @JsonKey(ignore: true)
  _$$_RestoreTaskCopyWith<_$_RestoreTask> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ArchivedTasksEventCopyWithImpl<$Res, _$_GetTasks>
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
    return 'ArchivedTasksEvent.getTasks(search: $search)';
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
    required TResult Function(int id) permanentDelete,
    required TResult Function(TaskModel task) restoreTask,
    required TResult Function(String? search) getTasks,
  }) {
    return getTasks(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? permanentDelete,
    TResult? Function(TaskModel task)? restoreTask,
    TResult? Function(String? search)? getTasks,
  }) {
    return getTasks?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? permanentDelete,
    TResult Function(TaskModel task)? restoreTask,
    TResult Function(String? search)? getTasks,
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
    required TResult Function(_PermanentDelete value) permanentDelete,
    required TResult Function(_RestoreTask value) restoreTask,
    required TResult Function(_GetTasks value) getTasks,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermanentDelete value)? permanentDelete,
    TResult? Function(_RestoreTask value)? restoreTask,
    TResult? Function(_GetTasks value)? getTasks,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermanentDelete value)? permanentDelete,
    TResult Function(_RestoreTask value)? restoreTask,
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements ArchivedTasksEvent {
  factory _GetTasks({final String? search}) = _$_GetTasks;

  String? get search;
  @JsonKey(ignore: true)
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArchivedTasksState {
  ActionStatus get status => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArchivedTasksStateCopyWith<ArchivedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArchivedTasksStateCopyWith<$Res> {
  factory $ArchivedTasksStateCopyWith(
          ArchivedTasksState value, $Res Function(ArchivedTasksState) then) =
      _$ArchivedTasksStateCopyWithImpl<$Res, ArchivedTasksState>;
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class _$ArchivedTasksStateCopyWithImpl<$Res, $Val extends ArchivedTasksState>
    implements $ArchivedTasksStateCopyWith<$Res> {
  _$ArchivedTasksStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ArchivedTasksStateCopyWith<$Res>
    implements $ArchivedTasksStateCopyWith<$Res> {
  factory _$$_ArchivedTasksStateCopyWith(_$_ArchivedTasksState value,
          $Res Function(_$_ArchivedTasksState) then) =
      __$$_ArchivedTasksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class __$$_ArchivedTasksStateCopyWithImpl<$Res>
    extends _$ArchivedTasksStateCopyWithImpl<$Res, _$_ArchivedTasksState>
    implements _$$_ArchivedTasksStateCopyWith<$Res> {
  __$$_ArchivedTasksStateCopyWithImpl(
      _$_ArchivedTasksState _value, $Res Function(_$_ArchivedTasksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tasks = null,
  }) {
    return _then(_$_ArchivedTasksState(
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

class _$_ArchivedTasksState implements _ArchivedTasksState {
  _$_ArchivedTasksState(
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
    return 'ArchivedTasksState(status: $status, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArchivedTasksState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchivedTasksStateCopyWith<_$_ArchivedTasksState> get copyWith =>
      __$$_ArchivedTasksStateCopyWithImpl<_$_ArchivedTasksState>(
          this, _$identity);
}

abstract class _ArchivedTasksState implements ArchivedTasksState {
  factory _ArchivedTasksState(
      {final ActionStatus status,
      final List<TaskModel> tasks}) = _$_ArchivedTasksState;

  @override
  ActionStatus get status;
  @override
  List<TaskModel> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_ArchivedTasksStateCopyWith<_$_ArchivedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
