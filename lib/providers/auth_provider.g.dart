// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(authService)
const authServiceProvider = AuthServiceProvider._();

final class AuthServiceProvider
    extends $FunctionalProvider<AuthServices, AuthServices, AuthServices>
    with $Provider<AuthServices> {
  const AuthServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authServiceHash();

  @$internal
  @override
  $ProviderElement<AuthServices> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthServices create(Ref ref) {
    return authService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthServices value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthServices>(value),
    );
  }
}

String _$authServiceHash() => r'70926fe1af7d82bca346ba04e073a30fc31446be';

/// Provider untuk state autentikasi (user yang sedang login)
@ProviderFor(AuthState)
const authStateProvider = AuthStateProvider._();

/// Provider untuk state autentikasi (user yang sedang login)
final class AuthStateProvider extends $NotifierProvider<AuthState, AuthModel?> {
  /// Provider untuk state autentikasi (user yang sedang login)
  const AuthStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStateHash();

  @$internal
  @override
  AuthState create() => AuthState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthModel?>(value),
    );
  }
}

String _$authStateHash() => r'3064dae794b1af1df1279aafd6f2cf479eaa96e6';

abstract class _$AuthState extends $Notifier<AuthModel?> {
  AuthModel? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AuthModel?, AuthModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthModel?, AuthModel?>,
              AuthModel?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
