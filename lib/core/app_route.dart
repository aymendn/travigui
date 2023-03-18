import '../view/auth/onboarding_screen.dart';
import '../view/auth/seller_form/activate_screen.dart';
import '../view/auth/seller_form/sign_up_second_screen.dart';
import '../view/auth/seller_form/sign_up_third_screen.dart';
import '../view/auth/sign_in_screen.dart';
import '../view/auth/seller_form/sign_up_screen.dart';

class AppRoute {
  const AppRoute._();

  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String signUpSecond = '/sign-up-second';
  static const String signUpThird = '/sign-up-third';

  static const String chooseAnnouncement = '/choose-announcement';
  static const String jobForm = '/job-form';
  static const String serviceForm = '/job-service';
  static const String announcmentDetails = '/announcment-details';
  static const String onboarding = '/onboarding';
  static const String activate = '/activate';

  static final routes = {
    signIn: (context) => const SignInScreen(),
    signUp: (context) => const SignUpScreen(),
    signUpSecond: (context) => const SignUpSecondScreen(),
    signUpThird: (context) => const SignUpThirdScreen(),
    onboarding: (context) => const OnboardingScreen(),
    activate: (context) => const ActivateScreen(),
  };
}
