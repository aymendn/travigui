class AuthRepository {
  const AuthRepository._();

  static Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {}

  static Future<void> signUpWithEmail({
    required String email,
    required String password,
    String? name,
  }) async {
    // await auth.createUserWithEmailAndPassword(
    //   email: email,
    //   password: password,

    // );

    // if(name != null) await auth.currentUser!.updateDisplayName(name);
  }

  static Future<void> signInWithGoogle() async {
    // GoogleSignIn googleSignIn = GoogleSignIn();

    // GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // if (googleUser != null) {
    //   GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    //   final credential = GoogleAuthProvider.credential(
    //     accessToken: googleAuth.accessToken,
    //     idToken: googleAuth.idToken,
    //   );

    //   await auth.signInWithCredential(credential);
    // }
  }

  static Future<void> signOut() async {
    // await auth.signOut();
  }
}
