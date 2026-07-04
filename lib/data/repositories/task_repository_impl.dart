

import 'package:todoapp/data/data.dart';

class TaskRepositoryImpl implements TaskRepository{
  final TaskDatasource _datasource;

  TaskRepositoryImpl(this._datasource);


  @override
  Future<void> createTask(Task task) async {
    // TODO: implement createTask
    try {
      await _datasource.addTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> deleteTask(Task task) async {
    // TODO: implement deleteTask
    try {
      await _datasource.deleteTask(task);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<Task>> getAllTasks() async {
    // TODO: implement getAllTasks
    try {
      return await _datasource.getAllTasks();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> updateTask(Task task) async {
    // TODO: implement updateTask
    try {
      await _datasource.updateTask(task);
    } catch (e) {
      throw '$e';
    }
  }

}