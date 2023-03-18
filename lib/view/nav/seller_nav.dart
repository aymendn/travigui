import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../active/seller_active_service_screen.dart';
import '../home/seller_screen.dart';
import '../message/message_screen.dart';
import '../shared/scaffold_with_safe_area.dart';

class SellerNav extends HookConsumerWidget {
  const SellerNav({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = useState(0);

    final screens = [
      const SellerScreen(),
      const MessageScreen(),
      const SellerActiveServiceScreen(),
      const SellerScreen(),
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
