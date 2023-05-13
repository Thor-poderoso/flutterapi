import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Student {
  late int id;
  late String name;
  late String age;

  String baseUrl = "http://localhost/flutter_api/mvc/model.student.php";
  dynamic response;

  Future<String> getAllitems() async {
    final url = Uri.parse(baseUrl);
    final headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Access-Control-Allow-Methods': 'GET, POST',
      'Access-Control-Allow-Headers': 'X-Requested-with'
    };

    final body = {'typeRequest': 'getAllitems'};

    response = await http.post(url, headers: headers, body: jsonEncode(body));
    return response.body;
    
  }
}
