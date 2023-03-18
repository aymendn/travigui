import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:http/http.dart' as http;

import '../core/app_constant.dart';
import '../models/user_data.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, UserData>((ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<UserData> {
  AuthNotifier([UserData? userData]) : super(userData ?? UserData.empty());

  void update(UserData userData) => state = userData;

  void addInterrest(String interrest) {
    state = state.copyWith(interrests: [
      ...state.interrests,
      if (!state.interrests.contains(interrest)) interrest,
    ]);
  }

  void removeInterrest(String interrest) {
    state = state.copyWith(interrests: [
      for (final i in state.interrests)
        if (i != interrest) i,
    ]);
  }

  bool isInterrestSelected(String interrest) {
    return state.interrests.contains(interrest);
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
    required Function(String) onError,
  }) async {
    try {
      final response = await http.post(
        AppConstant.loginUrl.uri,
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode != 200) {
        throw Exception();
      }

      final data = json.decode(response.body);

      if (data['status'] == 'false') {
        onError(data['msg']);
        return;
      }

      // final userData = UserData(
      //     // TODO: Add more data
      //     );

      // TODO: assign userData to state
      print(response.body);
    } catch (error) {
      onError('Sign In Error: Something went wrong');
    }
  }

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
