import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/scaffold_with_safe_area.dart';

enum FilterType { all, services, people }

extension on FilterType {
  String get label {
    switch (this) {
      case FilterType.all:
        return 'All (Services & People)';
      case FilterType.services:
        return 'Services only';
      case FilterType.people:
        return 'People only';
    }
  }
}

class FilterScreen extends HookConsumerWidget {
  const FilterScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final distance = useTextEditingController();
    final feildsInput = useTextEditingController();

    final height = MediaQuery.of(context).size.height;

    final type = useState(FilterType.all);
    return ScaffoldWithSafeArea(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                CustomButton(
                  onPressed: context.pop,
                  icon: Icons.close,
                  color: AppColor.grey,
                  textColor: AppColor.grey600,
                ),
                const SizedBox(
                  width: 16,
                ),
                const Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: distance,
              label: 'Distance',
              hint: 'ex: 2km from Current Location',
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Text(
                  'Type',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColor.grey200),
              ),
              child: DropdownButton(
                value: FilterType.all,
                items: [
                  for (var searchType in FilterType.values)
                    DropdownMenuItem(
                      value: searchType,
                      child: Text(searchType.label),
                    ),
                ],
                onChanged: (value) {
                  type.value = value ?? FilterType.all;
                },
                underline: Container(),
                isExpanded: true,
                icon: const Icon(Icons.arrow_drop_down),
              ),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: feildsInput,
              label: 'Fields',
              hint: 'ex: Dog Walking, Dog Sitting, ...',
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  onPressed: () {
                    // TODO: implement search
                    context.pop();
                  },
                  text: 'Search',
                  icon: Icons.search,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
