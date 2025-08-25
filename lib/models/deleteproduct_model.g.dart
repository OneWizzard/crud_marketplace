// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteproduct_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeleteProduct _$DeleteProductFromJson(Map<String, dynamic> json) =>
    _DeleteProduct(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$DeleteProductToJson(_DeleteProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isDeleted': instance.isDeleted,
    };
