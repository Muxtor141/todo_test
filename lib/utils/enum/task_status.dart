enum TaskStatus {
  active('active'),
  completed('completed'),
  archived('archived');

  const TaskStatus( this.status);
  final String status;
}