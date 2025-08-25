// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleteproduct_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteProduct {

 int get id; String get title; bool get isDeleted;
/// Create a copy of DeleteProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteProductCopyWith<DeleteProduct> get copyWith => _$DeleteProductCopyWithImpl<DeleteProduct>(this as DeleteProduct, _$identity);

  /// Serializes this DeleteProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isDeleted);

@override
String toString() {
  return 'DeleteProduct(id: $id, title: $title, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $DeleteProductCopyWith<$Res>  {
  factory $DeleteProductCopyWith(DeleteProduct value, $Res Function(DeleteProduct) _then) = _$DeleteProductCopyWithImpl;
@useResult
$Res call({
 int id, String title, bool isDeleted
});




}
/// @nodoc
class _$DeleteProductCopyWithImpl<$Res>
    implements $DeleteProductCopyWith<$Res> {
  _$DeleteProductCopyWithImpl(this._self, this._then);

  final DeleteProduct _self;
  final $Res Function(DeleteProduct) _then;

/// Create a copy of DeleteProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteProduct].
extension DeleteProductPatterns on DeleteProduct {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteProduct() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteProduct value)  $default,){
final _that = this;
switch (_that) {
case _DeleteProduct():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteProduct value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteProduct() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteProduct() when $default != null:
return $default(_that.id,_that.title,_that.isDeleted);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _DeleteProduct():
return $default(_that.id,_that.title,_that.isDeleted);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _DeleteProduct() when $default != null:
return $default(_that.id,_that.title,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteProduct implements DeleteProduct {
  const _DeleteProduct({required this.id, required this.title, required this.isDeleted});
  factory _DeleteProduct.fromJson(Map<String, dynamic> json) => _$DeleteProductFromJson(json);

@override final  int id;
@override final  String title;
@override final  bool isDeleted;

/// Create a copy of DeleteProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteProductCopyWith<_DeleteProduct> get copyWith => __$DeleteProductCopyWithImpl<_DeleteProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,isDeleted);

@override
String toString() {
  return 'DeleteProduct(id: $id, title: $title, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$DeleteProductCopyWith<$Res> implements $DeleteProductCopyWith<$Res> {
  factory _$DeleteProductCopyWith(_DeleteProduct value, $Res Function(_DeleteProduct) _then) = __$DeleteProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, bool isDeleted
});




}
/// @nodoc
class __$DeleteProductCopyWithImpl<$Res>
    implements _$DeleteProductCopyWith<$Res> {
  __$DeleteProductCopyWithImpl(this._self, this._then);

  final _DeleteProduct _self;
  final $Res Function(_DeleteProduct) _then;

/// Create a copy of DeleteProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? isDeleted = null,}) {
  return _then(_DeleteProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
