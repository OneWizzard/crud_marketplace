// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateproduct_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProduct _$UpdateProductFromJson(Map<String, dynamic> json) =>
    _UpdateProduct(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$UpdateProductToJson(_UpdateProduct instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_UpdateParams _$UpdateParamsFromJson(Map<String, dynamic> json) =>
    _UpdateParams(
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateParamsToJson(_UpdateParams instance) =>
    <String, dynamic>{'title': instance.title, 'id': instance.id};
