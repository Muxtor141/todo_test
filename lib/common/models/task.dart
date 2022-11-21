import 'package:equatable/equatable.dart';
import 'package:objectbox/objectbox.dart';

/// Statuses of Task are : active,archived,completed
@Entity()
class TaskModel extends Equatable {
  int id;

  final String title;
  final String description;
  final String createdAt;
  final String status;
  final String completionDate;

  TaskModel(
      {required this.title,
      required this.id,
      required this.description,
      required this.status,
       this.completionDate='',
      required this.createdAt});

  TaskModel copyWith({
    String? title,
    String? description,
    String? createdAt,
    String? completionDate,
    String? status,
  }) {
    return TaskModel(
        completionDate: completionDate ?? this.completionDate,
        title: title ?? this.title,
        description: description ?? this.description,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        id: id);
  }

  @override
  List<Object?> get props =>
      [description, title, status, createdAt, completionDate, id];
}
