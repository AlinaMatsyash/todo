import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String todoId;
  String content;
  bool done;

  TodoModel({
    required this.todoId,
    required this.content,
    required this.done,
  });

  TodoModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot)
      : todoId = documentSnapshot.id,
        content = documentSnapshot['content'] as String,
        done = documentSnapshot['done'] as bool;
}
