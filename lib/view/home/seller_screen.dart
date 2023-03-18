import 'package:flutter/material.dart';

import '../shared/logo.dart';
import 'custom_card.dart';
import 'custom_search_bar.dart';

class SellerScreen extends StatefulWidget {
  const SellerScreen({super.key});

  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
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
        selectedItemColor: const Color(0xff1B5BFF),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Logo(),
                const SizedBox(
                  height: 20,
                ),
                CustomSearchBar(searchController: _searchController),
                const SizedBox(
                  height: 20,
                ),
                const CustomCard(
                    text: 'Taking My dog On A Trip everyday for 2h',
                    location: 'Cheraga, Alger',
                    price: '10,000 Da/Mo',
                    image: 'the link of the img',
                    buttonText: 'Postuler',
                    buttonColor: Color(0xff1B5BFF),
                    isSeller: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
