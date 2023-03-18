import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app_color.dart';
import '../../../core/app_exension.dart';
import '../../../core/app_methods.dart';
import '../../../core/app_route.dart';
import '../../../providers/auth.dart';
import '../../shared/back_button.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_form_field.dart';
import '../../shared/scaffold_with_safe_area.dart';
import '../../shared/stepper/stepper.dart';

class SignUpSecondScreen extends StatefulHookConsumerWidget {
  const SignUpSecondScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpSecondScreenState();
}

class _SignUpSecondScreenState extends ConsumerState<SignUpSecondScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController ccp = useTextEditingController();
    final TextEditingController bio = useTextEditingController();
    final TextEditingController skills = useTextEditingController();

    final ValueNotifier<bool> isLoading = useState(false);
    final auth = ref.read(authProvider.notifier);

    final height = MediaQuery.of(context).size.height;

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (!formKey.currentState!.validate()) {
        context.pushReplacement(AppRoute.signUpThird);
      }
    }

    return ScaffoldWithSafeArea(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Row(
            children: const [
              BackButtons(),
            ],
          ),
          SizedBox(height: height * 0.03),
          const Text(
            'Let\'s Get You Into Your Account',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.03),
          const Steppers(index: 2),
          SizedBox(height: height * 0.03),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextFormField(
                  keyboradType: TextInputType.phone,
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '   00799999   ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  controller: ccp,
                  label: 'BaridiMob',
                  hint: 'CCP',
                  validator: AppMethod.generalValidator,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  controller: bio,
                  label: 'Bio',
                  hint: 'Talk A little About Your Self...',
                  isLarge: true,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  controller: skills,
                  label: 'Add A Personal skill',
                  hint: 'Je peux faire...',
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onPressed: () {
                        context.pushReplacement(AppRoute.signUp);
                      },
                      text: 'Precedent',
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
                      color: AppColor.grey,
                      textColor: AppColor.grey600,
                    ),
                    const SizedBox(width: 8),
                    CustomButton(
                      onPressed: onFormSubmitted,
                      text: 'Suivant',
                      isLoading: isLoading.value,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
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
