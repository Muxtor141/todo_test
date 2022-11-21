import 'package:objectbox/objectbox.dart';
import 'package:test_todo/common/models/task.dart';
import 'package:test_todo/objectbox.g.dart';

class TodoBox {
  late final Box<TaskModel> task;

  /// The Store of this app.
  late final Store store;

  TodoBox._create(this.store) {
    task = Box<TaskModel>(store);
  }

  /// Create an instance of ObjectBox to use throughout the app.
  static Future<TodoBox> create() async {
    final store = await openStore();
    return TodoBox._create(store);
  }

  int insertTask(TaskModel note) => task.put(note);

  List<int> insertManyTask(List<TaskModel> list) => task.putMany(list);

  bool deleteTask(int id) => task.remove(id);

  TaskModel? tasks(int id) => task.get(id);

  int? update(TaskModel object) => task.put(object, mode: PutMode.update);

  int removeAll() => task.removeAll();

  Stream<List<TaskModel>> getTaskListStream(String status, {String? search}) {
    var query = task.query(
      TaskModel_.status.equals(status) &
          TaskModel_.title.contains(search ?? ''),
    );

    return query.watch(triggerImmediately: true).map((event) => event.find());
  }

  List<TaskModel> getTasksList(String status, {String? search}) => task
      .query(TaskModel_.status.equals(status) &
          TaskModel_.title.contains(search ?? ''))
      .build()
      .find();
}
