import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../active/seller_active_service_screen.dart';
import '../home/seller_screen.dart';
import '../message/message_screen.dart';
import '../settings/settings_screen.dart';
import '../shared/scaffold_with_safe_area.dart';

class SellerNav extends HookConsumerWidget {
  const SellerNav({super.key, this.startingIndex = 0});

  final int startingIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = useState(startingIndex);

    final screens = [
      const SellerScreen(),
      const MessageScreen(),
      const SellerActiveServiceScreen(),
      const SettingsScreen(),
    ];

    return ScaffoldWithSafeArea(
      body: screens[index.value],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: index.value,
        selectedItemColor: const Color(0xff1B5BFF),
        onTap: (value) {
          index.value = value;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            activeIcon: Icon(Icons.email_rounded),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            activeIcon: Icon(Icons.work_rounded),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings_rounded),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
