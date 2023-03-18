import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/logo.dart';
import 'custom_card.dart';

class BuyerScreen extends HookConsumerWidget {
  const BuyerScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Logo(),
              CustomButton(
                text: 'Poster une Service',
                icon: Icons.add,
                color: AppColor.secondary,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(
            icon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.filter_alt),
              onPressed: () {
                context.push(AppRoute.filter);
              },
            ),
            controller: controller,
            hint: 'Search',
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const CustomCard(
                title: 'Taking My dog On A Trip everyday for 2h',
                location: 'Cheraga, Alger',
                subtitle: 'Jarden Carryier',
                imageUrl: 'https://picsum.photos/200/300',
                isSeller: false,
              );
            },
          ),
        ),
      ],
    );
  }
}
