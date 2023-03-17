import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iwd/view/auth/steps.dart';
import '../../providers/onboarding.dart';
import '../shared/custom_button.dart';
import 'page_item.dart';

class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ValueNotifier<int> currentStep = useState(0);
    final PageController pageController = usePageController();

    void onStepChanged() {
      if (currentStep.value < 2) {
        pageController.animateToPage(
          currentStep.value + 1,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        ref.read(onboardingProvider.notifier).setOnboarding(false);
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) => currentStep.value = index,
              children: const [
                PageItem(currentSteps: 0, imageurl: "assets/images/UI/2.png"),
                PageItem(currentSteps: 1, imageurl: "assets/images/UI/1.png"),
                PageItem(currentSteps: 2, imageurl: "assets/images/UI/3.png"),
              ],
            ),
          ),
          Steps(
            currentSteps: currentStep.value,
            stepsCount: 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: CustomButton(
              onPressed: onStepChanged,
              child: Text(
                currentStep.value < 2 ? 'Next' : 'Get Started',
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
