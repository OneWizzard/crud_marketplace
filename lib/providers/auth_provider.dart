import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auth_model.dart';
import '../services/auth_services.dart';

part 'auth_provider.g.dart';

@riverpod
AuthServices authService(Ref ref) {
  return AuthServices();
}

/// Provider untuk state autentikasi (user yang sedang login)
@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  @override
  AuthModel? build() => null;

  /// Login user
  Future<void> login(String username, String password) async {
    final service = ref.read(authServiceProvider);
    final user = await service.login(username, password);
    // print('User setelah login: $user');
    state = user; // set user ke state global
  }

  /// Logout user
  void logout() {
    state = null;
  }
}