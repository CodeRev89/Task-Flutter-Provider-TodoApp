import 'package:flutter/material.dart';
import "package:todo_app/models/todo.dart";

class todoProvider extends ChangeNotifier {
  var todos = [
    Todo(id: 0, title: "Finish CODED Task"),
  ];

  void addTodo({required String title}) {
    todos.add(Todo(id: todos.length, title: title));
    notifyListeners();
  }

  void toggleTaskStatus({required int id}) {
    var todo = todos.firstWhere((element) => element.id == id);
    todo.done = !todo.done;
    notifyListeners();
  }
}
