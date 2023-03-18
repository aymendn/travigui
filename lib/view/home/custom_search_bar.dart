import 'package:flutter/material.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffADB5BD)),
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(color: Color(0xffADB5BD)),
            prefixIcon: IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xffADB5BD),
              ),
              onPressed: () {},
            ),
            suffixIcon: IconButton(
                icon: Icon(Icons.filter_1, color: Color(0xffADB5BD)),
                onPressed: null),
          ),
          onChanged: null),
    );
  }
}