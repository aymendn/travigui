import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../nav/buyer_nav.dart';
import '../nav/seller_nav.dart';
import '../shared/scaffold_with_safe_area.dart';

final isSellerProvider = StateProvider<bool>((ref) {
  return false;
});

class SettingsScreen extends HookConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSeller = ref.watch(isSellerProvider);

    void onSwitchMode(bool? value) async {
      if (value == null) return;

      ref.read(isSellerProvider.notifier).state = value;
      await Future.delayed(const Duration(milliseconds: 200));

      if (isSeller && context.mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const SellerNav(startingIndex: 3),
          ),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const BuyerNav(startingIndex: 3),
          ),
        );
      }
    }

    return ScaffoldWithSafeArea(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        children: [
          const Text(
            'Settings',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Switch',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          CupertinoSlidingSegmentedControl<bool>(
            padding: const EdgeInsets.all(10),
            backgroundColor: const Color(0xffF2F5F7),
            children: {
              false: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 16,
                ),
                child: Text(
                  'Recruiter',
                  style: TextStyle(
                    color: !isSeller ? AppColor.primary : AppColor.grey500,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              true: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 16,
                ),
                child: Text(
                  'Employee',
                  style: TextStyle(
                    color: isSeller ? AppColor.secondary : AppColor.grey500,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            },
            groupValue: isSeller,
            onValueChanged: onSwitchMode,
          ),
          const SizedBox(height: 20),
          const Text(
            'Other',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColor.grey100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: const [
                ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.settings,
                    color: AppColor.grey500,
                  ),
                  title: Text(
                    'General Settings',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: AppColor.grey700,
                    ),
                  ),
                ),
                Divider(
                  color: AppColor.grey100,
                ),
                ListTile(
                  dense: true,
                  leading: Icon(
                    Icons.security,
                    color: AppColor.grey500,
                  ),
                  title: Text(
                    'Security',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: AppColor.grey700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColor.grey100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const ListTile(
              dense: true,
              leading: Icon(
                Icons.logout,
                color: AppColor.grey500,
              ),
              title: Text(
                'Log out',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: AppColor.grey700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
