import 'package:cyneox_test/utils/global_color.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  const TextInputField({
    super.key,
    required this.label,
     required this.hintText,
    required this.controller,
    this.obscureText = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: GlobalColors.mainColor, 
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: GlobalColors.mainColor,
                width: 1.0,
              ),
            ),
          ),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            style: TextStyle(color: GlobalColors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 12),
              hintText: hintText,
              hintStyle: TextStyle(
                color: GlobalColors.white
              ),
            ),
            cursorColor: GlobalColors.mainColor,
          ),
        ),
      ],
    );
  }
}
