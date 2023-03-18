import '../view/auth/onboarding_screen.dart';
import '../view/auth/seller_form/activate_screen.dart';
import '../view/auth/seller_form/sign_up_second_screen.dart';
import '../view/auth/seller_form/sign_up_third_screen.dart';
import '../view/auth/sign_in_screen.dart';
import '../view/auth/seller_form/sign_up_screen.dart';
import '../view/filter/filter_screen.dart';
import '../view/home/buyer_details_screen.dart';
import '../view/home/buyer_screen.dart';
import '../view/home/seller_details_screen.dart';
import '../view/home/seller_screen.dart';
import '../view/nav/seller_nav.dart';
import '../view/recruter_screen.dart';
import '../view/scan/scan_screen.dart';

class AppRoute {
  const AppRoute._();

  static const String sellerNav = '/seller-nav';
  static const String buyerNav = '/buyer-nav';
  static const String sellerHome = '/seller-home';
  static const String buyerHome = '/buyer-home';
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
  static const String filter = '/filter';
  static const String scan = '/scan';
  static const String sellerDetails = '/seller-details';
  static const String buyerDetails = '/buyer-details';
  static const String recruter = '/recruter';


  static final routes = {
    signIn: (context) => const SignInScreen(),
    signUp: (context) => const SignUpScreen(),
    signUpSecond: (context) => const SignUpSecondScreen(),
    signUpThird: (context) => const SignUpThirdScreen(),
    onboarding: (context) => const OnboardingScreen(),
    activate: (context) => const ActivateScreen(),
    sellerHome: (context) => const SellerScreen(),
    buyerHome: (context) => const BuyerScreen(),
    sellerNav: (context) => const SellerNav(),
    filter: (context) => const FilterScreen(),
    // buyerNav: (context) => const BuyerNav(),
    scan: (context) => const ScanScreen(),
    sellerDetails: (context) => const SellerDetailsScreen(),
    buyerDetails: (context) => const BuyerDetailsScreen(),
     recruter: (context) => const RecruterScreen(),
  };
}
