import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: searchController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffADB5BD)),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: Color(0xffADB5BD)),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Color(0xffADB5BD),
            ),
            onPressed: () {},
          ),
          suffixIcon: const IconButton(
            icon: Icon(Icons.filter_1, color: Color(0xffADB5BD)),
            onPressed: null,
          ),
        ),
        onChanged: null);
  }
}
