import 'package:flutter/material.dart';
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        prefixIcon: const Icon(Icons.search),
        hintText: "Search Coffee",
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
