import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';

final List<Map<String, dynamic>> categories = [
  {
    'id': 1,
    'name': 'Category 1',
  },
  {
    'id': 2,
    'name': 'Category 2',
  },
  // Add more categories as needed
];

Response getCategories(Request request) {
  final List<Map<String, dynamic>> categoriesWithImageData =
  categories.map((category) {
    return {
      'id': category['id'],
      'name': category['name'],
    };
  }).toList();

  final responseBody = jsonEncode(categoriesWithImageData);

  return Response.ok(responseBody, headers: {'Content-Type': 'application/json'});
}
