import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/auth_model.dart';
import '../services/auth_services.dart';

part 'auth_provider.g.dart';

@riverpod
AuthServices authService(AuthServiceRef ref) {
  return AuthServices();
}

@riverpod
class AuthState extends _$AuthState {
  @override
  AuthModel? build() {
    return null;
  }

  Future<void> login(String username, String password) async {
    final service = ref.read(authServiceProvider);
    final user = await service.login(username, password);
    state = user;
  }

  void logout() {
    state = null;
  }
}