import '../view/auth/sign_in_screen.dart';

class AppRoute {
  const AppRoute._();

  static const String signIn = '/sign-in';
  static const String sellerScreen = '/seller';

  static final routes = {
    signIn: (context) => const SignInScreen(),
  };
}
