import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_todo/models/todo.dart';

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late final CollectionReference _userTodosRef;

  DatabaseService() {
    String userEmail = FirebaseAuth.instance.currentUser!.email!;
    _userTodosRef = _firestore
        .collection('users')
        .doc(userEmail)
        .collection('todos')
        .withConverter<Todo>(
      fromFirestore: (snapshot, _) => Todo.fromJson(snapshot.data()!),
      toFirestore: (todo, _) => todo.toJson(),
    );
  }

  Stream<QuerySnapshot> getTodos() {
    return _userTodosRef.snapshots();
  }

  void addTodo(Todo todo) async {
    await _userTodosRef.add(todo);
  }

  void updateTodo(String todoId, Todo todo) {
    _userTodosRef.doc(todoId).update(todo.toJson());
  }

  void deleteTodo(String todoId) {
    _userTodosRef.doc(todoId).delete();
  }
}
