import 'package:freezed_annotation/freezed_annotation.dart';

part 'addproduct_model.freezed.dart';
part 'addproduct_model.g.dart';

@freezed
abstract class AddProduct with _$AddProduct {
  const factory AddProduct({
    required int id,
    required String title,
  }) = _AddProduct;

  factory AddProduct.fromJson(Map<String, dynamic> json) => _$AddProductFromJson(json);
}