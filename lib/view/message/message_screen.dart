import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../../core/app_exension.dart';
import '../../core/app_route.dart';
import '../shared/custom_text_form_field.dart';
import '../shared/scaffold_with_safe_area.dart';
import 'message_card.dart';

class MessageScreen extends HookConsumerWidget {
  const MessageScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final height = MediaQuery.of(context).size.height;
    return ScaffoldWithSafeArea(
      body: ListView(
        children: [
          SizedBox(height: height * 0.05),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: AppColor.grey500,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
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
          const SizedBox(height: 20),
          for (var i = 0; i < 10; i++)
            MessageCard(
              isRead: Random().nextBool(),
            ),
        ],
      ),
    );
  }
}
