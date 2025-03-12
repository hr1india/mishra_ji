import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon:
                const Icon(Icons.tune, color: Colors.grey), // Filter icon
            hintText: "Search",
            hintStyle: const TextStyle(color: Colors.grey),
            suffixIcon:
                const Icon(Icons.search, color: Colors.grey), // Search icon
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          ),
        ),
      ),
    );
  }
}
