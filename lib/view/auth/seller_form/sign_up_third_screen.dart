import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/app_color.dart';
import '../../../core/app_exension.dart';
import '../../../core/app_route.dart';
import '../../../providers/auth.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_form_field.dart';
import '../../shared/scaffold_with_safe_area.dart';
import '../../shared/stepper/stepper.dart';

class SignUpThirdScreen extends StatefulHookConsumerWidget {
  const SignUpThirdScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpThirdScreenState();
}

class _SignUpThirdScreenState extends ConsumerState<SignUpThirdScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<String> interrestsList = [
    'Traveaux prat',
    'théorique',
    'pratique',
    'theorique',
    'prat',
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController interrests = useTextEditingController();

    final ValueNotifier<bool> isLoading = useState(false);
    final authInterrests =
        ref.watch(authProvider.select((value) => value.interrests));
    final authReader = ref.read(authProvider.notifier);

    final height = MediaQuery.of(context).size.height;

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (formKey.currentState!.validate()) {
        context.pushReplacement(AppRoute.activate);
      }
    }

    return ScaffoldWithSafeArea(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(height: height * 0.04),
          const Steppers(index: 3),
          SizedBox(height: height * 0.06),
          const Text(
            'Choose Topics You Might Be Interested In !',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.04),
          Wrap(
            spacing: 10,
            children: [
              for (int i = 0; i < interrestsList.length; i++)
                ChoiceChip(
                  side: BorderSide.none,
                  backgroundColor: AppColor.grey,
                  label: Text(interrestsList[i]),
                  selected: authReader.isInterrestSelected(interrestsList[i]),
                  onSelected: (bool selected) {
                    if (selected) {
                      authReader.addInterrest(interrestsList[i]);
                    } else {
                      authReader.removeInterrest(interrestsList[i]);
                    }
                  },
                ),
            ],
          ),
          SizedBox(height: height * 0.04),
          const Text(
            'Or You may have other interests! Tell us about them',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: height * 0.01),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextFormField(
                  controller: interrests,
                  hint: 'Interests',
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      onPressed: () {
                        context.pushReplacement(AppRoute.signUpSecond);
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
