import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_methods.dart';
import '../../providers/auth.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_form_field.dart';

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
    final TextEditingController name = useTextEditingController();
    final TextEditingController phone = useTextEditingController();

    final ValueNotifier<bool> isLoading = useState(false);
    final ValueNotifier<bool> isSignIn = useState(true);
    final auth = ref.read(authProvider.notifier);

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (formKey.currentState!.validate()) {
        isLoading.value = true;
        if (isSignIn.value) {
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
        } else {
          await auth.signUpWithEmail(
            email: email.text,
            password: password.text,
            name: name.text,
            onError: (error) {
              AppMethod.showPopUp(
                context: context,
                title: 'Sign In Error',
                content: error,
              );
            },
          );
        }
        isLoading.value = false;
      }
    }

    void toggleFormType() {
      formKey.currentState!.reset();
      isSignIn.value = !isSignIn.value;
    }

    final String buttonString = isSignIn.value ? 'Sign In' : 'Sign Up';
    final String toggleString =
        isSignIn.value ? 'Create an account' : 'Sign In';

    final String questionString =
        isSignIn.value ? 'Don\'t have an account?' : 'Already have an account?';

    return Scaffold(
      appBar: AppBar(title: Text(buttonString)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AnimatedContainer(
                  constraints: BoxConstraints(
                    maxHeight: isSignIn.value ? 0 : 80,
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: CustomTextFormField(
                    controller: name,
                    label: 'Name',
                    validator: isSignIn.value ? AppMethod.nameValidator : null,
                  ),
                ),
                const SizedBox(height: 16),
                AnimatedContainer(
                  constraints: BoxConstraints(
                    maxHeight: isSignIn.value ? 0 : 80,
                  ),
                  duration: const Duration(milliseconds: 300),
                  child: CustomTextFormField(
                    controller: phone,
                    label: 'Phone',
                    validator: isSignIn.value ? AppMethod.phoneValidator : null,
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  controller: email,
                  label: 'Email',
                  validator: AppMethod.emailValidator,
                ),
                const SizedBox(height: 16),
                CustomTextFormField(
                  controller: password,
                  label: 'Password',
                  validator: AppMethod.passwordValidator,
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: onFormSubmitted,
                  child: isLoading.value
                      ? const CircularProgressIndicator(color: Colors.white)
                      : Text(
                          buttonString,
                          style: const TextStyle(fontSize: 17),
                        ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(questionString),
                    TextButton(
                      onPressed: toggleFormType,
                      child: Text(
                        toggleString,
                        textAlign: TextAlign.end,
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
