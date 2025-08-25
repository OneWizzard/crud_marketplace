// productdetail_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'productdetail_model.freezed.dart';
part 'productdetail_model.g.dart';

@freezed
abstract class Dimensions with _$Dimensions {
  const factory Dimensions({
    required double width,
    required double height,
    required double depth,
  }) = _Dimensions;

  factory Dimensions.fromJson(Map<String, dynamic> json) =>
      _$DimensionsFromJson(json);
}

@freezed
abstract class Review with _$Review {
  const factory Review({
    required int rating,
    required String comment,
    required String date,
    required String reviewerName,
    required String reviewerEmail,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required DateTime createdAt,
    required DateTime updatedAt,
    required String barcode,
    required String qrCode,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class ProductDetail with _$ProductDetail {
  const factory ProductDetail({
    required int id,
    required String title,
    required String description,
    required String category,
    required double price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required List<String> tags,
    required String brand,
    required String sku,
    required double weight,
    required Dimensions dimensions,
    required String warrantyInformation,
    required String shippingInformation,
    required String availabilityStatus,
    required List<Review> reviews,
    required String returnPolicy,
    required int minimumOrderQuantity,
    required Meta meta,
    required String thumbnail,
    required List<String> images,
  }) = _ProductDetail;
  
  factory ProductDetail.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailFromJson(json);
}