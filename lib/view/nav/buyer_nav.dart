import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_color.dart';
import '../active/buyer_active_service_screen.dart';
import '../home/buyer_screen.dart';
import '../message/message_screen.dart';
import '../settings/settings_screen.dart';
import '../shared/scaffold_with_safe_area.dart';

class BuyerNav extends HookConsumerWidget {
  const BuyerNav({super.key, this.startingIndex = 0});

  final int startingIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = useState(startingIndex);

    final screens = [
      const BuyerScreen(),
      const MessageScreen(),
      const BuyerActiveServiceScreen(),
      const SettingsScreen(),
    ];

    return ScaffoldWithSafeArea(
      body: screens[index.value],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: index.value,
        selectedItemColor: AppColor.secondary,
        onTap: (value) {
          index.value = value;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
