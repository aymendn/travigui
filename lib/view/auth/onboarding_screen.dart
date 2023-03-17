import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../shared/custom_button.dart';
import 'steps.dart';

class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState(0);

    final PageController pageController = usePageController();

    void nextPage() {
      if (currentIndex.value < 4) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    }

    void previousPage() {
      if (currentIndex.value > 0) {
        pageController.previousPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentIndex.value = index;
            },
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 300,
            padding: const EdgeInsets.all(26),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Publish Services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Publish your services and get more customers',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                currentIndex.value == 3
                    ? Column(
                        children: [
                          CustomButton(
                            isFullWidth: true,
                            text: 'Sign in',
                            onPressed: () {
                              context.push(AppRoute.signIn);
                            },
                            textColor: Colors.black,
                            color: AppColor.grey,
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            isFullWidth: true,
                            text: 'Create an account',
                            onPressed: () {
                              context.push(AppRoute.signUp);
                            },
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Steps(currentSteps: currentIndex.value),
                          const Spacer(),
                          CustomButton(
                            text: 'Prev',
                            icon: Icons.arrow_back_ios,
                            onPressed: previousPage,
                            color: AppColor.grey,
                            textColor: Colors.black,
                          ),
                          const SizedBox(width: 10),
                          CustomButton(
                            text: 'Next',
                            isIconRight: true,
                            icon: Icons.arrow_forward_ios,
                            onPressed: nextPage,
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
