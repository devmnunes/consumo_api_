import 'package:consumo_api/http/json_placeholder_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main()async {
  

  test('deve retornar todos os todos', () async {
    final services = JsonPlaceholderService();
    final todos = await services.getTodos();
    expect(todos[0].title, 'delectus aut autem');
    
  });
}