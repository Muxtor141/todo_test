// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completed_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompletedTasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? search) getTasks,
    required TResult Function(int id) permanentDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(int id)? permanentDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(int id)? permanentDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_PermanentDelete value) permanentDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_PermanentDelete value)? permanentDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_PermanentDelete value)? permanentDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTasksEventCopyWith<$Res> {
  factory $CompletedTasksEventCopyWith(
          CompletedTasksEvent value, $Res Function(CompletedTasksEvent) then) =
      _$CompletedTasksEventCopyWithImpl<$Res, CompletedTasksEvent>;
}

/// @nodoc
class _$CompletedTasksEventCopyWithImpl<$Res, $Val extends CompletedTasksEvent>
    implements $CompletedTasksEventCopyWith<$Res> {
  _$CompletedTasksEventCopyWithImpl(this._value, this._then);

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
    extends _$CompletedTasksEventCopyWithImpl<$Res, _$_GetTasks>
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
    return 'CompletedTasksEvent.getTasks(search: $search)';
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
    required TResult Function(int id) permanentDelete,
  }) {
    return getTasks(search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(int id)? permanentDelete,
  }) {
    return getTasks?.call(search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(int id)? permanentDelete,
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
    required TResult Function(_PermanentDelete value) permanentDelete,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_PermanentDelete value)? permanentDelete,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_PermanentDelete value)? permanentDelete,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements CompletedTasksEvent {
  factory _GetTasks({final String? search}) = _$_GetTasks;

  String? get search;
  @JsonKey(ignore: true)
  _$$_GetTasksCopyWith<_$_GetTasks> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CompletedTasksEventCopyWithImpl<$Res, _$_PermanentDelete>
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
    return 'CompletedTasksEvent.permanentDelete(id: $id)';
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
    required TResult Function(String? search) getTasks,
    required TResult Function(int id) permanentDelete,
  }) {
    return permanentDelete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? search)? getTasks,
    TResult? Function(int id)? permanentDelete,
  }) {
    return permanentDelete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? search)? getTasks,
    TResult Function(int id)? permanentDelete,
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
    required TResult Function(_GetTasks value) getTasks,
    required TResult Function(_PermanentDelete value) permanentDelete,
  }) {
    return permanentDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
    TResult? Function(_PermanentDelete value)? permanentDelete,
  }) {
    return permanentDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    TResult Function(_PermanentDelete value)? permanentDelete,
    required TResult orElse(),
  }) {
    if (permanentDelete != null) {
      return permanentDelete(this);
    }
    return orElse();
  }
}

abstract class _PermanentDelete implements CompletedTasksEvent {
  factory _PermanentDelete(final int id) = _$_PermanentDelete;

  int get id;
  @JsonKey(ignore: true)
  _$$_PermanentDeleteCopyWith<_$_PermanentDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompletedTasksState {
  ActionStatus get status => throw _privateConstructorUsedError;
  List<TaskModel> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompletedTasksStateCopyWith<CompletedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedTasksStateCopyWith<$Res> {
  factory $CompletedTasksStateCopyWith(
          CompletedTasksState value, $Res Function(CompletedTasksState) then) =
      _$CompletedTasksStateCopyWithImpl<$Res, CompletedTasksState>;
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class _$CompletedTasksStateCopyWithImpl<$Res, $Val extends CompletedTasksState>
    implements $CompletedTasksStateCopyWith<$Res> {
  _$CompletedTasksStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CompletedTasksStateCopyWith<$Res>
    implements $CompletedTasksStateCopyWith<$Res> {
  factory _$$_CompletedTasksStateCopyWith(_$_CompletedTasksState value,
          $Res Function(_$_CompletedTasksState) then) =
      __$$_CompletedTasksStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status, List<TaskModel> tasks});
}

/// @nodoc
class __$$_CompletedTasksStateCopyWithImpl<$Res>
    extends _$CompletedTasksStateCopyWithImpl<$Res, _$_CompletedTasksState>
    implements _$$_CompletedTasksStateCopyWith<$Res> {
  __$$_CompletedTasksStateCopyWithImpl(_$_CompletedTasksState _value,
      $Res Function(_$_CompletedTasksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? tasks = null,
  }) {
    return _then(_$_CompletedTasksState(
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

class _$_CompletedTasksState implements _CompletedTasksState {
  _$_CompletedTasksState(
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
    return 'CompletedTasksState(status: $status, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompletedTasksState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompletedTasksStateCopyWith<_$_CompletedTasksState> get copyWith =>
      __$$_CompletedTasksStateCopyWithImpl<_$_CompletedTasksState>(
          this, _$identity);
}

abstract class _CompletedTasksState implements CompletedTasksState {
  factory _CompletedTasksState(
      {final ActionStatus status,
      final List<TaskModel> tasks}) = _$_CompletedTasksState;

  @override
  ActionStatus get status;
  @override
  List<TaskModel> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$_CompletedTasksStateCopyWith<_$_CompletedTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}
