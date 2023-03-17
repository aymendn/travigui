import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/user_data.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, UserData?>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<UserData?> {
  AuthNotifier([UserData? userData]) : super(userData);

  void update(UserData? userData) => state = userData;

  Future<void> signInWithEmail({
    required String email,
    required String password,
    required Function(String) onError,
  }) async {}

  Future<void> signInWithGoogle({
    required Function(String) onError,
  }) async {}

  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required String name,
    required Function(String) onError,
  }) async {}

  Future<void> signOut({required Function(String) onError}) async {}
}
