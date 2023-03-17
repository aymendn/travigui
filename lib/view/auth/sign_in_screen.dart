import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_methods.dart';
import '../../providers/auth.dart';
import '../shared/back_button.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/scaffold_with_safe_area.dart';

class SignInScreen extends StatefulHookConsumerWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = useTextEditingController();
    final TextEditingController password = useTextEditingController();

    final ValueNotifier<bool> isLoading = useState(false);
    final auth = ref.read(authProvider.notifier);

    final height = MediaQuery.of(context).size.height;

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (formKey.currentState!.validate()) {
        isLoading.value = true;
        await auth.signInWithEmail(
          email: email.text,
          password: password.text,
          onError: (error) {
            AppMethod.showPopUp(
              context: context,
              title: 'Sign In Error',
              content: error,
            );
          },
        );
        isLoading.value = false;
      }
    }

    return ScaffoldWithSafeArea(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: height * 0.05),
          Row(
            children: const [
              BackButtons(),
            ],
          ),
          SizedBox(height: height * 0.05),
          const Text(
            'Let\'s Get You Into Your Account',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Enter Your Infos To get Into Your\nAccount',
            style: TextStyle(
              color: AppColor.grey600,
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: onFormSubmitted,
                  text: 'Sign In',
                  isLoading: isLoading.value,
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t Have An Account? ',
                      style: TextStyle(
                        color: AppColor.grey500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
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
