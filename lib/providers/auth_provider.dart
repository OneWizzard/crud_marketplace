import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/auth_model.dart';
import '../services/auth_services.dart';


final authServiceProvider = Provider<AuthServices>((ref) => AuthServices());

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthModel?>((ref) {
  return AuthNotifier(ref.read(authServiceProvider));
});

class AuthNotifier extends StateNotifier<AuthModel?> {
  final AuthServices _authService;

  AuthNotifier(this._authService) : super(null);

  Future<void> login(String username, String password) async {
    final user = await _authService.login(username, password);
    state = user; // simpan data user
  }

  void logout() {
    state = null;
  }
}