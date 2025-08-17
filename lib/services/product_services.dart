import 'package:crud_marketplace/models/addproduct_model.dart';
import 'package:crud_marketplace/models/deleteproduct_model.dart';
import 'package:crud_marketplace/models/productdetail_model.dart';
import 'package:crud_marketplace/models/updateproduct_model.dart';
import 'package:crud_marketplace/services/apiservices.dart';
import '../models/product_model.dart';
import 'package:dio/dio.dart';

class ProductService {

  final Dio _dio = ApiService.dio;

  Future<List<Product>> getProducts() async {
    try{
    final response = await _dio.get("products");

    if (response.statusCode == 200 && response.data['products'] != null) {
        final data = response.data['products'] as List;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception("Gagal mengambil produk: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw Exception("Kesalahan jaringan: ${e.message}");
    } catch (e) {
      throw Exception("Kesalahan tak terduga: $e");
    }
  }

  Future<ProductDetail> getProductDetail(int id) async {
    try {
      final response = await _dio.get("products/$id");

      if (response.statusCode == 200 && response.data != null) {
        return ProductDetail.fromJson(response.data);
      } else {
        throw Exception("Gagal mengambil detail produk: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw Exception("Kesalahan jaringan: ${e.message}");
    } catch (e) {
      throw Exception("Kesalahan tak terduga: $e");
    }
  }

  Future<AddProduct> addProduct (String title) async {
    try {
      final response = await _dio.post(
        "products/add",
        data: {"title" : title},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return AddProduct.fromJson(response.data);
      } else {
        throw Exception("Gagal menambah produk: ${response.statusCode}");
      }
    } on DioException catch (e) {
      throw Exception("Kesalahan jaringan: ${e.message}");
    } catch (e) {
      throw Exception("Kesalahan tak terduga: $e");
    }
  }

  Future<UpdateProduct> updateProduct (String title, int id) async {
    try {
      final response = await _dio.put(
        "products/$id",
        data: {"title" : title},
      );
      if (response.statusCode == 200) {
        return UpdateProduct.fromJson(response.data);
      } else {
        throw Exception("Gagal mengubah produk: ${response.statusCode}");
      }
    }on DioException catch (e) {
      throw Exception("Kesalahan jaringan: ${e.message}");
    } catch (e) {
      throw Exception("Kesalahan tak terduga: $e");
    }
  }

  Future<DeleteProduct> deleteProduct (int id) async {
    try {
      final response = await _dio.delete(
        "products/$id",
      );
      if (response.statusCode == 200) {
        return DeleteProduct.fromJson(response.data);
      } else {
        throw Exception("Gagal mengapus produk: ${response.statusCode}");
      }
    }on DioException catch (e) {
      throw Exception("Kesalahan jaringan: ${e.message}");
    } catch (e) {
      throw Exception("Kesalahan tak terduga: $e");
    }
  }
}