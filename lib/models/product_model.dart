import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class Product with _$Product{
  const factory Product({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required String thumbnail,
    required List<String> images,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}