import 'package:freezed_annotation/freezed_annotation.dart';

part 'deleteproduct_model.freezed.dart';
part 'deleteproduct_model.g.dart';

@freezed
abstract class DeleteProduct with _$DeleteProduct{
  const factory DeleteProduct ({
    required int id,
    required String title,
    required bool isDeleted,
  }) = _DeleteProduct;
  
  factory DeleteProduct.fromJson(Map<String, dynamic> json) => _$DeleteProductFromJson(json);
}
// class DeleteProduct {
//   final int id;
//   final String title;
//   final bool isDeleted;

//   DeleteProduct({
//     required this.id,
//     required this.title,
//     required this.isDeleted
//   });

//   factory DeleteProduct.fromJson(Map<String, dynamic> json) {
//     return DeleteProduct(
//       id: json['id'],
//       title: json['title'],
//       isDeleted: json['isDeleted'],
//     );
//   }
// }