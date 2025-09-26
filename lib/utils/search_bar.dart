
import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  const SearchBarWidget({
    super.key,
    this.controller,
    this.hintText = 'Enter seacrch keywords here',
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          color: GlobalColors.inactiveColor.withOpacity(0.3), 
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: GlobalColors.white.withOpacity(0.6),
            width: 1.4,
          ),
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          style: TextStyle(color: GlobalColors.white),
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search, color: Colors.white70,size: 30),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          ),
        ),
      ),
    );
  }
}