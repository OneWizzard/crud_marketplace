// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productServiceHash() => r'199388505ab819bf6ee758b13a384288d334dafb';

/// See also [productService].
@ProviderFor(productService)
final productServiceProvider = AutoDisposeProvider<ProductService>.internal(
  productService,
  name: r'productServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductServiceRef = AutoDisposeProviderRef<ProductService>;
String _$productListHash() => r'7fbfe0e3c5ade3a376589017685746f25e24ab56';

/// See also [productList].
@ProviderFor(productList)
final productListProvider = AutoDisposeFutureProvider<List<Product>>.internal(
  productList,
  name: r'productListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductListRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$productDetailHash() => r'e66e3ed07a8aca31f902617362e1ff111282fab2';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [productDetail].
@ProviderFor(productDetail)
const productDetailProvider = ProductDetailFamily();

/// See also [productDetail].
class ProductDetailFamily extends Family<AsyncValue<ProductDetail>> {
  /// See also [productDetail].
  const ProductDetailFamily();

  /// See also [productDetail].
  ProductDetailProvider call(int id) {
    return ProductDetailProvider(id);
  }

  @override
  ProductDetailProvider getProviderOverride(
    covariant ProductDetailProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'productDetailProvider';
}

/// See also [productDetail].
class ProductDetailProvider extends AutoDisposeFutureProvider<ProductDetail> {
  /// See also [productDetail].
  ProductDetailProvider(int id)
    : this._internal(
        (ref) => productDetail(ref as ProductDetailRef, id),
        from: productDetailProvider,
        name: r'productDetailProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$productDetailHash,
        dependencies: ProductDetailFamily._dependencies,
        allTransitiveDependencies:
            ProductDetailFamily._allTransitiveDependencies,
        id: id,
      );

  ProductDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<ProductDetail> Function(ProductDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProductDetailProvider._internal(
        (ref) => create(ref as ProductDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProductDetail> createElement() {
    return _ProductDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProductDetailRef on AutoDisposeFutureProviderRef<ProductDetail> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ProductDetailProviderElement
    extends AutoDisposeFutureProviderElement<ProductDetail>
    with ProductDetailRef {
  _ProductDetailProviderElement(super.provider);

  @override
  int get id => (origin as ProductDetailProvider).id;
}

String _$addProductHash() => r'e7b5d8fa8bfb9cd01d0d95ebc738dc890eb92f16';

/// See also [addProduct].
@ProviderFor(addProduct)
const addProductProvider = AddProductFamily();

/// See also [addProduct].
class AddProductFamily extends Family<AsyncValue<AddProduct>> {
  /// See also [addProduct].
  const AddProductFamily();

  /// See also [addProduct].
  AddProductProvider call(String title) {
    return AddProductProvider(title);
  }

  @override
  AddProductProvider getProviderOverride(
    covariant AddProductProvider provider,
  ) {
    return call(provider.title);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addProductProvider';
}

/// See also [addProduct].
class AddProductProvider extends AutoDisposeFutureProvider<AddProduct> {
  /// See also [addProduct].
  AddProductProvider(String title)
    : this._internal(
        (ref) => addProduct(ref as AddProductRef, title),
        from: addProductProvider,
        name: r'addProductProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$addProductHash,
        dependencies: AddProductFamily._dependencies,
        allTransitiveDependencies: AddProductFamily._allTransitiveDependencies,
        title: title,
      );

  AddProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.title,
  }) : super.internal();

  final String title;

  @override
  Override overrideWith(
    FutureOr<AddProduct> Function(AddProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddProductProvider._internal(
        (ref) => create(ref as AddProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        title: title,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AddProduct> createElement() {
    return _AddProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddProductProvider && other.title == title;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddProductRef on AutoDisposeFutureProviderRef<AddProduct> {
  /// The parameter `title` of this provider.
  String get title;
}

class _AddProductProviderElement
    extends AutoDisposeFutureProviderElement<AddProduct>
    with AddProductRef {
  _AddProductProviderElement(super.provider);

  @override
  String get title => (origin as AddProductProvider).title;
}

String _$updateProductHash() => r'6b39461c6bf6eff20caea0aadd812c73f3225644';

/// See also [updateProduct].
@ProviderFor(updateProduct)
const updateProductProvider = UpdateProductFamily();

/// See also [updateProduct].
class UpdateProductFamily extends Family<AsyncValue<UpdateProduct>> {
  /// See also [updateProduct].
  const UpdateProductFamily();

  /// See also [updateProduct].
  UpdateProductProvider call(UpdateParams params) {
    return UpdateProductProvider(params);
  }

  @override
  UpdateProductProvider getProviderOverride(
    covariant UpdateProductProvider provider,
  ) {
    return call(provider.params);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateProductProvider';
}

/// See also [updateProduct].
class UpdateProductProvider extends AutoDisposeFutureProvider<UpdateProduct> {
  /// See also [updateProduct].
  UpdateProductProvider(UpdateParams params)
    : this._internal(
        (ref) => updateProduct(ref as UpdateProductRef, params),
        from: updateProductProvider,
        name: r'updateProductProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$updateProductHash,
        dependencies: UpdateProductFamily._dependencies,
        allTransitiveDependencies:
            UpdateProductFamily._allTransitiveDependencies,
        params: params,
      );

  UpdateProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final UpdateParams params;

  @override
  Override overrideWith(
    FutureOr<UpdateProduct> Function(UpdateProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateProductProvider._internal(
        (ref) => create(ref as UpdateProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<UpdateProduct> createElement() {
    return _UpdateProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateProductProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateProductRef on AutoDisposeFutureProviderRef<UpdateProduct> {
  /// The parameter `params` of this provider.
  UpdateParams get params;
}

class _UpdateProductProviderElement
    extends AutoDisposeFutureProviderElement<UpdateProduct>
    with UpdateProductRef {
  _UpdateProductProviderElement(super.provider);

  @override
  UpdateParams get params => (origin as UpdateProductProvider).params;
}

String _$deleteProductHash() => r'b3cc4259bf6c3187618dad3c61b7cce76ab1cd04';

/// See also [deleteProduct].
@ProviderFor(deleteProduct)
const deleteProductProvider = DeleteProductFamily();

/// See also [deleteProduct].
class DeleteProductFamily extends Family<AsyncValue<DeleteProduct>> {
  /// See also [deleteProduct].
  const DeleteProductFamily();

  /// See also [deleteProduct].
  DeleteProductProvider call(int id) {
    return DeleteProductProvider(id);
  }

  @override
  DeleteProductProvider getProviderOverride(
    covariant DeleteProductProvider provider,
  ) {
    return call(provider.id);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteProductProvider';
}

/// See also [deleteProduct].
class DeleteProductProvider extends AutoDisposeFutureProvider<DeleteProduct> {
  /// See also [deleteProduct].
  DeleteProductProvider(int id)
    : this._internal(
        (ref) => deleteProduct(ref as DeleteProductRef, id),
        from: deleteProductProvider,
        name: r'deleteProductProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$deleteProductHash,
        dependencies: DeleteProductFamily._dependencies,
        allTransitiveDependencies:
            DeleteProductFamily._allTransitiveDependencies,
        id: id,
      );

  DeleteProductProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<DeleteProduct> Function(DeleteProductRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteProductProvider._internal(
        (ref) => create(ref as DeleteProductRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DeleteProduct> createElement() {
    return _DeleteProductProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteProductProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteProductRef on AutoDisposeFutureProviderRef<DeleteProduct> {
  /// The parameter `id` of this provider.
  int get id;
}

class _DeleteProductProviderElement
    extends AutoDisposeFutureProviderElement<DeleteProduct>
    with DeleteProductRef {
  _DeleteProductProviderElement(super.provider);

  @override
  int get id => (origin as DeleteProductProvider).id;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
