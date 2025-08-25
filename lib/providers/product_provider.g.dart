// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(productService)
const productServiceProvider = ProductServiceProvider._();

final class ProductServiceProvider
    extends $FunctionalProvider<ProductService, ProductService, ProductService>
    with $Provider<ProductService> {
  const ProductServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productServiceHash();

  @$internal
  @override
  $ProviderElement<ProductService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ProductService create(Ref ref) {
    return productService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductService>(value),
    );
  }
}

String _$productServiceHash() => r'0473fdd2a61f1b9401fe8cd8815ed49e7139952a';

@ProviderFor(productList)
const productListProvider = ProductListProvider._();

final class ProductListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Product>>,
          List<Product>,
          FutureOr<List<Product>>
        >
    with $FutureModifier<List<Product>>, $FutureProvider<List<Product>> {
  const ProductListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productListHash();

  @$internal
  @override
  $FutureProviderElement<List<Product>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Product>> create(Ref ref) {
    return productList(ref);
  }
}

String _$productListHash() => r'ed73192761334031765e1308595070caf6adb1be';

@ProviderFor(productDetail)
const productDetailProvider = ProductDetailFamily._();

final class ProductDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductDetail>,
          ProductDetail,
          FutureOr<ProductDetail>
        >
    with $FutureModifier<ProductDetail>, $FutureProvider<ProductDetail> {
  const ProductDetailProvider._({
    required ProductDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'productDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailHash();

  @override
  String toString() {
    return r'productDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ProductDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductDetail> create(Ref ref) {
    final argument = this.argument as int;
    return productDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailHash() => r'385205db1bd6b827c29ded621bc98f4d18a5aac4';

final class ProductDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ProductDetail>, int> {
  const ProductDetailFamily._()
    : super(
        retry: null,
        name: r'productDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailProvider call(int id) =>
      ProductDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'productDetailProvider';
}

@ProviderFor(addProduct)
const addProductProvider = AddProductFamily._();

final class AddProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<AddProduct>,
          AddProduct,
          FutureOr<AddProduct>
        >
    with $FutureModifier<AddProduct>, $FutureProvider<AddProduct> {
  const AddProductProvider._({
    required AddProductFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'addProductProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$addProductHash();

  @override
  String toString() {
    return r'addProductProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<AddProduct> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<AddProduct> create(Ref ref) {
    final argument = this.argument as String;
    return addProduct(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AddProductProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addProductHash() => r'2928ec06da794e63e09c4a70f3ff243ba67b06d4';

final class AddProductFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<AddProduct>, String> {
  const AddProductFamily._()
    : super(
        retry: null,
        name: r'addProductProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AddProductProvider call(String title) =>
      AddProductProvider._(argument: title, from: this);

  @override
  String toString() => r'addProductProvider';
}

@ProviderFor(updateProduct)
const updateProductProvider = UpdateProductFamily._();

final class UpdateProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<UpdateProduct>,
          UpdateProduct,
          FutureOr<UpdateProduct>
        >
    with $FutureModifier<UpdateProduct>, $FutureProvider<UpdateProduct> {
  const UpdateProductProvider._({
    required UpdateProductFamily super.from,
    required UpdateParams super.argument,
  }) : super(
         retry: null,
         name: r'updateProductProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$updateProductHash();

  @override
  String toString() {
    return r'updateProductProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UpdateProduct> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<UpdateProduct> create(Ref ref) {
    final argument = this.argument as UpdateParams;
    return updateProduct(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateProductProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$updateProductHash() => r'8e78fb2afe588703f56c4ae2b2ffe3e2c5d7da4c';

final class UpdateProductFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UpdateProduct>, UpdateParams> {
  const UpdateProductFamily._()
    : super(
        retry: null,
        name: r'updateProductProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UpdateProductProvider call(UpdateParams params) =>
      UpdateProductProvider._(argument: params, from: this);

  @override
  String toString() => r'updateProductProvider';
}

@ProviderFor(deleteProduct)
const deleteProductProvider = DeleteProductFamily._();

final class DeleteProductProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteProduct>,
          DeleteProduct,
          FutureOr<DeleteProduct>
        >
    with $FutureModifier<DeleteProduct>, $FutureProvider<DeleteProduct> {
  const DeleteProductProvider._({
    required DeleteProductFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'deleteProductProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deleteProductHash();

  @override
  String toString() {
    return r'deleteProductProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DeleteProduct> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteProduct> create(Ref ref) {
    final argument = this.argument as int;
    return deleteProduct(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteProductProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deleteProductHash() => r'27ee747d76001e20b5cab5a39b7867dd1f7f74d8';

final class DeleteProductFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DeleteProduct>, int> {
  const DeleteProductFamily._()
    : super(
        retry: null,
        name: r'deleteProductProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeleteProductProvider call(int id) =>
      DeleteProductProvider._(argument: id, from: this);

  @override
  String toString() => r'deleteProductProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
