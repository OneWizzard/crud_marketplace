// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updateproduct_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProduct {

 int get id; String get title;
/// Create a copy of UpdateProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProductCopyWith<UpdateProduct> get copyWith => _$UpdateProductCopyWithImpl<UpdateProduct>(this as UpdateProduct, _$identity);

  /// Serializes this UpdateProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'UpdateProduct(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $UpdateProductCopyWith<$Res>  {
  factory $UpdateProductCopyWith(UpdateProduct value, $Res Function(UpdateProduct) _then) = _$UpdateProductCopyWithImpl;
@useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class _$UpdateProductCopyWithImpl<$Res>
    implements $UpdateProductCopyWith<$Res> {
  _$UpdateProductCopyWithImpl(this._self, this._then);

  final UpdateProduct _self;
  final $Res Function(UpdateProduct) _then;

/// Create a copy of UpdateProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProduct].
extension UpdateProductPatterns on UpdateProduct {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProduct() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProduct value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProduct():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProduct value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProduct() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProduct() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title)  $default,) {final _that = this;
switch (_that) {
case _UpdateProduct():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProduct() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProduct implements UpdateProduct {
  const _UpdateProduct({required this.id, required this.title});
  factory _UpdateProduct.fromJson(Map<String, dynamic> json) => _$UpdateProductFromJson(json);

@override final  int id;
@override final  String title;

/// Create a copy of UpdateProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProductCopyWith<_UpdateProduct> get copyWith => __$UpdateProductCopyWithImpl<_UpdateProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'UpdateProduct(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$UpdateProductCopyWith<$Res> implements $UpdateProductCopyWith<$Res> {
  factory _$UpdateProductCopyWith(_UpdateProduct value, $Res Function(_UpdateProduct) _then) = __$UpdateProductCopyWithImpl;
@override @useResult
$Res call({
 int id, String title
});




}
/// @nodoc
class __$UpdateProductCopyWithImpl<$Res>
    implements _$UpdateProductCopyWith<$Res> {
  __$UpdateProductCopyWithImpl(this._self, this._then);

  final _UpdateProduct _self;
  final $Res Function(_UpdateProduct) _then;

/// Create a copy of UpdateProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_UpdateProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UpdateParams {

 String get title; int get id;
/// Create a copy of UpdateParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateParamsCopyWith<UpdateParams> get copyWith => _$UpdateParamsCopyWithImpl<UpdateParams>(this as UpdateParams, _$identity);

  /// Serializes this UpdateParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateParams&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id);

@override
String toString() {
  return 'UpdateParams(title: $title, id: $id)';
}


}

/// @nodoc
abstract mixin class $UpdateParamsCopyWith<$Res>  {
  factory $UpdateParamsCopyWith(UpdateParams value, $Res Function(UpdateParams) _then) = _$UpdateParamsCopyWithImpl;
@useResult
$Res call({
 String title, int id
});




}
/// @nodoc
class _$UpdateParamsCopyWithImpl<$Res>
    implements $UpdateParamsCopyWith<$Res> {
  _$UpdateParamsCopyWithImpl(this._self, this._then);

  final UpdateParams _self;
  final $Res Function(UpdateParams) _then;

/// Create a copy of UpdateParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? id = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateParams].
extension UpdateParamsPatterns on UpdateParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateParams() when $default != null:
return $default(_that.title,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  int id)  $default,) {final _that = this;
switch (_that) {
case _UpdateParams():
return $default(_that.title,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  int id)?  $default,) {final _that = this;
switch (_that) {
case _UpdateParams() when $default != null:
return $default(_that.title,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateParams implements UpdateParams {
  const _UpdateParams({required this.title, required this.id});
  factory _UpdateParams.fromJson(Map<String, dynamic> json) => _$UpdateParamsFromJson(json);

@override final  String title;
@override final  int id;

/// Create a copy of UpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateParamsCopyWith<_UpdateParams> get copyWith => __$UpdateParamsCopyWithImpl<_UpdateParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateParams&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,id);

@override
String toString() {
  return 'UpdateParams(title: $title, id: $id)';
}


}

/// @nodoc
abstract mixin class _$UpdateParamsCopyWith<$Res> implements $UpdateParamsCopyWith<$Res> {
  factory _$UpdateParamsCopyWith(_UpdateParams value, $Res Function(_UpdateParams) _then) = __$UpdateParamsCopyWithImpl;
@override @useResult
$Res call({
 String title, int id
});




}
/// @nodoc
class __$UpdateParamsCopyWithImpl<$Res>
    implements _$UpdateParamsCopyWith<$Res> {
  __$UpdateParamsCopyWithImpl(this._self, this._then);

  final _UpdateParams _self;
  final $Res Function(_UpdateParams) _then;

/// Create a copy of UpdateParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? id = null,}) {
  return _then(_UpdateParams(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
