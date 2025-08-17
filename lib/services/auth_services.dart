import 'package:crud_marketplace/models/auth_model.dart';
import 'package:crud_marketplace/services/apiservices.dart';
import 'package:dio/dio.dart';

class AuthServices {
  final Dio _dio = ApiService.dio;

  Future<AuthModel> login (String username, password) async {
    try {
      final response = await _dio.post(
        "auth/login", 
        data: {
          "username": username,
          "password": password,
          "expiresInMins": 30,
        },
        options: Options(
          followRedirects: false,
          validateStatus: (status) => status! < 500,
        ),
      );

       if (response.statusCode == 200) {
        return AuthModel.fromJson(response.data);
      } else {
        throw Exception("Login gagal: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Terjadi kesalahan: $e");
    }
    
    
  }
}