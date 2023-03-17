import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/app_methods.dart';
import '../../../core/app_color.dart';
import '../../../core/app_exension.dart';
import '../../../core/app_route.dart';
import '../../../providers/auth.dart';
import '../../shared/back_button.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_form_field.dart';
import '../../shared/scaffold_with_safe_area.dart';

class SignUpScreen extends StatefulHookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController nom = useTextEditingController();
    final TextEditingController prenom = useTextEditingController();
    final TextEditingController phone = useTextEditingController();
    final TextEditingController email = useTextEditingController();
    final TextEditingController password = useTextEditingController();

    final auth = ref.read(authProvider.notifier);

    final height = MediaQuery.of(context).size.height;

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (formKey.currentState!.validate()) {
        context.pushReplacement(AppRoute.signUpSecond);
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
          const Text(
            'stepper index: 0',
            style: TextStyle(
              color: AppColor.grey600,
            ),
          ),
          SizedBox(height: height * 0.03),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        icon: const Icon(Icons.person_outline),
                        controller: nom,
                        label: 'Nom',
                        hint: 'Nom',
                        validator: AppMethod.nameValidator,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: CustomTextFormField(
                        icon: const Icon(Icons.person_outline),
                        controller: prenom,
                        label: 'Prénom',
                        hint: 'Prénom',
                        validator: AppMethod.nameValidator,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  keyboradType: TextInputType.phone,
                  icon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '   +213   ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  controller: phone,
                  label: 'Phone Number',
                  hint: '0557356157',
                  validator: AppMethod.phoneValidator,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  icon: const Icon(Icons.person_outline),
                  controller: email,
                  label: 'Email',
                  hint: 'Example@gmail.com',
                  validator: AppMethod.emailValidator,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  icon: const Icon(Icons.lock_outline),
                  controller: password,
                  label: 'Password',
                  hint: 'Password',
                  validator: AppMethod.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onPressed: onFormSubmitted,
                      text: 'Suivant',
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
