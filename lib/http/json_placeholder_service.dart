import 'dart:io';

import 'package:consumo_api/models/todo_model.dart';
import 'package:dio/dio.dart';

class JsonPlaceholderService {
final url = 'https://jsonplaceholder.typicode.com/todos/';
 final Dio dio;

 JsonPlaceholderService(this.dio);

Future<List<TodoModel>> getTodos() async{
  final response = await dio.get(url);

  final body = response.data as List;

  final todos = body.map((map) => TodoModel(
    userId: map['userId'], 
    id: map['id'], 
    title: map['title'], 
    completed: map['completed'],
    ),
  ).toList();
  return todos;
}
}