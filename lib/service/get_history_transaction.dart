import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BankAPI {
  final dio = Dio();

  Future<Response> getHistory() async {
    var uri =
        ('https://64cb3d6e700d50e3c7059418.mockapi.io/historyTransaction');
    final response = await dio.get(uri);
    debugPrint(response.toString());
    return response;
  }
}
