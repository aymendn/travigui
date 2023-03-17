import '../view/add_anouncement/job_form_scren.dart';
import '../view/add_anouncement/services_form_screen.dart';
import '../view/announcment_details/announcment_details_screen.dart';
import '../view/auth/onboarding_screen.dart';
import '../view/auth/sign_in_screen.dart';
import '../view/choose_anoncement/choose_anoncement_screen.dart';

class AppRoute {
  const AppRoute._();

  static const String signIn = '/sign-in';
  static const String chooseAnnouncement = '/choose-announcement';
  static const String jobForm = '/job-form';
  static const String serviceForm = '/job-service';
  static const String announcmentDetails = '/announcment-details';
  static const String onboarding = '/onboarding';



  static final routes = {
    signIn: (context) => const SignInScreen(),
    chooseAnnouncement: (context) => const ChooseAnoncementScreen(),
    jobForm: (context) => const JobFormScreen(),
    serviceForm: (context) => const ServiceFormScreen(),
    announcmentDetails: (context) => const AnnouncmentDetailsScreen(),
    onboarding: (context) => const OnboardingScreen(),
  };
}
