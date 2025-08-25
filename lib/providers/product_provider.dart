import 'package:crud_marketplace/models/addproduct_model.dart';
import 'package:crud_marketplace/models/deleteproduct_model.dart';
import 'package:crud_marketplace/models/productdetail_model.dart';
import 'package:crud_marketplace/models/updateproduct_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/product_model.dart';
import '../services/product_services.dart';

part 'product_provider.g.dart';

@riverpod
ProductService productService(Ref ref){
  return ProductService();
}

@riverpod
Future<List<Product>> productList(Ref ref) async {
  final service = ref.watch(productServiceProvider);
  return service.getProducts();
}

@riverpod
Future<ProductDetail> productDetail(Ref ref, int id) async {
  final service = ref.watch(productServiceProvider);
  return service.getProductDetail(id);
}

@riverpod
Future<AddProduct> addProduct(Ref ref, String title) async {
  final service = ref.watch(productServiceProvider);
  return service.addProduct(title);
}

@riverpod
Future<UpdateProduct> updateProduct(Ref ref, UpdateParams params) async {
  final service = ref.watch(productServiceProvider);
  return service.updateProduct(params.title, params.id);
}

@riverpod
Future<DeleteProduct> deleteProduct(Ref ref, int id) async {
  final service = ref.watch(productServiceProvider);
  return service.deleteProduct(id);
}

// final deleteProductProvider =FutureProvider.family<DeleteProduct, int>((ref, id) async {
//   final service = ref.watch(productServiceProvider);
//   return service.deleteProduct(id);
// });