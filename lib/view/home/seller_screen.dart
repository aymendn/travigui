import 'package:flutter/material.dart';

import '../shared/custom_button.dart';
import '../shared/logo.dart';
import 'custom_card.dart';
import 'custom_search_bar.dart';

class SellerScreen extends StatefulWidget {
  @override
  State<SellerScreen> createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  TextEditingController _searchController = TextEditingController();
  late TabController _tabController;

  String _searchText = '';

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
        selectedItemColor: Color(0xff1B5BFF),
      
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Logo(),
                SizedBox(
                  height: 20,
                ),
                CustomSearchBar(searchController: _searchController),
                SizedBox(
                  height: 20,
                ),
                CustomCard(
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
