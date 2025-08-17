import 'package:dio/dio.dart';

class ApiService {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://dummyjson.com/",
      connectTimeout: const Duration(seconds: 300),
      receiveTimeout: const Duration(seconds: 300),
      headers: { 'Content-Type': 'application/json' },
    ), 
  );
}