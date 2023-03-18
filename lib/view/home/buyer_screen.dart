import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
import '../shared/logo.dart';
import 'custom_card.dart';
import 'custom_search_bar.dart';

class BuyerScreen extends StatefulWidget {
  const BuyerScreen({super.key});

  @override
  State<BuyerScreen> createState() => _BuyerScreenState();
}

class _BuyerScreenState extends State<BuyerScreen> {
  final TextEditingController _searchController = TextEditingController();
  late TabController _tabController;
  final String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_rounded,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flash_on,
              color: Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_user_rounded,
              color: Colors.grey,
            ),
            label: '',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color(0xffF56D38),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Logo(),
                    CustomButton(
                      text: 'Poster une Service',
                      icon: Icons.add,
                      color: const Color(0xffF56D38),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomSearchBar(searchController: _searchController),
                const SizedBox(
                  height: 20,
                ),
                const CustomCard(
                  title: 'Aymen Dennoub',
                  location: 'Cheraga, Alger',
                  subtitle: 'Développeur Web',
                  imageUrl: 'the link of the img',
                  isSeller: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
