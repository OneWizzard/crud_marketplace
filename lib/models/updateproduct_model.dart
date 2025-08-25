import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateproduct_model.freezed.dart';
part 'updateproduct_model.g.dart';

@freezed
abstract class UpdateProduct with _$UpdateProduct {
  const factory UpdateProduct ({
    required int id,
    required String title,

  }) = _UpdateProduct;
  
  factory UpdateProduct.fromJson(Map<String, dynamic> json) => _$UpdateProductFromJson(json);
}

@freezed
abstract class UpdateParams with _$UpdateParams{
  const factory UpdateParams ({
    required String title,
    required int id,
  }) = _UpdateParams;
  
  factory UpdateParams.fromJson(Map<String, dynamic> json) => _$UpdateParamsFromJson(json);
}
// class UpdateProduct {
//   final int id;
//   final String title;

//   UpdateProduct({
//     required this.id,
//     required this.title,
//   });

//   factory UpdateProduct.fromJson(Map<String, dynamic> json) {
//     return UpdateProduct(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// class UpdateParams {
//   final String title;
//   final int id;
//   UpdateParams(this.title, this.id);
// }