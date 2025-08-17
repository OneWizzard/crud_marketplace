import 'package:crud_marketplace/models/addproduct_model.dart';
import 'package:crud_marketplace/models/deleteproduct_model.dart';
import 'package:crud_marketplace/models/productdetail_model.dart';
import 'package:crud_marketplace/models/updateproduct_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product_model.dart';
import '../services/product_services.dart';

final productServiceProvider = Provider<ProductService>((ref) {
  return ProductService();
});

final productListProvider = FutureProvider<List<Product>>((ref) async {
  final service = ref.watch(productServiceProvider);
  return service.getProducts();
});

final productDetailProvider = FutureProvider.family<ProductDetail, int>((ref, id) async {
  final service = ref.watch(productServiceProvider);
  return service.getProductDetail(id);
});

final addProductProvider = FutureProvider.family<AddProduct, String>((ref, title) async {
  final service = ref.watch(productServiceProvider);
  return service.addProduct(title);
});

final updateProductProvider = FutureProvider.family<UpdateProduct, UpdateParams>((ref, params) async {
  final service = ref.watch(productServiceProvider);
  return service.updateProduct(params.title, params.id);
});

final deleteProductProvider =FutureProvider.family<DeleteProduct, int>((ref, id) async {
  final service = ref.watch(productServiceProvider);
  return service.deleteProduct(id);
});