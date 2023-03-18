import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../core/app_color.dart';
import 'shared/scaffold_with_safe_area.dart';

import '../../../../core/app_methods.dart';
import '../../../core/app_exension.dart';
import '../../../core/app_route.dart';
import '../../../providers/auth.dart';
import 'shared/custom_button.dart';
import 'shared/custom_text_form_field.dart';

enum FilterType { service, job }

extension on FilterType {
  String get label {
    switch (this) {
      case FilterType.service:
        return 'Service (Default)';
      case FilterType.job:
        return 'Job';
    }
  }
}

class RecruterScreen extends StatefulHookConsumerWidget {
  const RecruterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RecruterScreenState();
}

class _RecruterScreenState extends ConsumerState<RecruterScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final TextEditingController title = useTextEditingController();
    final TextEditingController desc = useTextEditingController();
    final TextEditingController payment = useTextEditingController();
    final TextEditingController keywords = useTextEditingController();
    final TextEditingController location = useTextEditingController();

    final auth = ref.read(authProvider.notifier);

    final type = useState(FilterType.service);

    final height = MediaQuery.of(context).size.height;

    // formKey using hooks and useMemoized
    final GlobalKey<FormState> formKey = useMemoized(
      () => GlobalKey<FormState>(),
      [context],
    );

    Future<void> onFormSubmitted() async {
      if (!formKey.currentState!.validate()) {
        context.pushReplacement(AppRoute.signUpSecond);
      }
    }

    return ScaffoldWithSafeArea(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                SizedBox(height: height * 0.03),
                const Text(
                  'Nouvelle Announcement ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.grey200),
                        ),
                        child: DropdownButton(
                          value: FilterType.service,
                          items: [
                            for (var searchType in FilterType.values)
                              DropdownMenuItem(
                                value: searchType,
                                child: Text(searchType.label),
                              ),
                          ],
                          onChanged: (value) {
                            type.value = value ?? FilterType.service;
                          },
                          underline: Container(),
                          isExpanded: true,
                          icon: const Icon(Icons.arrow_drop_down),
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        icon: const Icon(Icons.title),
                        controller: title,
                        label: 'Announcement Title',
                        hint: 'Title',
                        validator: AppMethod.generalValidator,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        controller: desc,
                        label: 'Service Description',
                        hint: 'Description',
                        validator: AppMethod.generalValidator,
                        isLarge: true,
                        tooltip: 'Give a description of your service',
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        icon: const Icon(Icons.payment),
                        controller: payment,
                        label: 'Payment',
                        hint: 'ex 5000DA',
                        validator: AppMethod.generalValidator,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        icon: const Icon(Icons.key),
                        controller: keywords,
                        label: 'Key Words',
                        hint: 'Put Your Key Words Here',
                        validator: AppMethod.generalValidator,
                      ),
                      const SizedBox(height: 16),
                      CustomTextFormField(
                        icon: const Icon(Icons.location_on),
                        controller: location,
                        label: 'Location',
                        hint: 'ex Alger',
                        validator: AppMethod.generalValidator,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              // shadow:
              boxShadow: [
                BoxShadow(
                  color: AppColor.grey100,
                  spreadRadius: 5,
                  blurRadius: 12,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    onPressed: () {
                      context.pop();
                    },
                    text: 'Annuler',
                    color: AppColor.grey,
                    textColor: AppColor.grey600,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: CustomButton(
                    onPressed: onFormSubmitted,
                    text: 'Publier',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
