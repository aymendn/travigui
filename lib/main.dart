import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/app_route.dart';
import 'mondher_activate_screen.dart';
import 'providers/onboarding.dart';
import 'providers/shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/app_color.dart';
import 'view/auth/seller_form/sign_up_third_screen.dart';
import 'view/home/buyer_details_screen.dart';
import 'view/home/buyer_screen.dart';
import 'view/home/seller_details_screen.dart';
import 'view/home/seller_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const IwdApp(),
    ),
  );
}

class IwdApp extends ConsumerWidget {
  const IwdApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFirstTime = ref.watch(onboardingProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travigui',
      theme: ThemeData(
        fontFamily: 'sora',
        primarySwatch: Colors.blue,
        primaryColor: AppColor.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      routes: AppRoute.routes,



      home:  BuyerDetailsScreen(),


      // home: isFirstTime
      //     ? const OnboardingScreen()
      //     : StreamBuilder(
      //         stream: auth.authStateChanges(),
      //         builder: (BuildContext context, AsyncSnapshot snapshot) {
      //           if (snapshot.connectionState == ConnectionState.active) {
      //             if (auth.currentUser != null) {
      //               return const Nav();
      //             }
      //             return const SignInScreen();
      //           }
      //           return const Scaffold(
      //             body: Center(
      //               child: CircularProgressIndicator(),
      //             ),
      //           );
      //         },
      //       ),
    );
  }
}
