import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../../providers/onboarding.dart';
import '../shared/logo.dart';

class LoadingScreen extends HookConsumerWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 3), () {
        final isFirstTime = ref.watch(onboardingProvider);
        if (isFirstTime) {
          context.pushReplacement(AppRoute.onboarding);
        } else {
          context.pushReplacement(AppRoute.signIn);
        }
      });
      return null;
    }, const []);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Logo(),
            SizedBox(height: 20),
            SizedBox(
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: LinearProgressIndicator(
                  minHeight: 5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
