import 'package:cyneox_test/utils/global_color.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double height;
  final double borderRadius;

  const MainButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.height = 48,
    this.borderRadius = 90,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? GlobalColors.mainColor;
    final txtColor = textColor ?? GlobalColors.white;

    return SizedBox(
      width:  MediaQuery.of(context).size.width * 0.6,  
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: txtColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Text(text,style: TextStyle(fontSize: 16)), 
      ),
    );
  }
}
