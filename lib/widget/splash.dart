import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class SplashPageWidget extends StatelessWidget {
  final String? text;
  final String imagePath;
  final Widget? extraWidget;
  final Widget? customTextWidget;
  final double imageHeight;
  final EdgeInsetsGeometry? contentPadding;

  const SplashPageWidget({
    super.key,
    this.text,
    required this.imagePath,
    this.extraWidget,
    this.customTextWidget, 
    this.imageHeight = 80, 
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalColors.bgColor,
      padding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: imageHeight,
            fit: BoxFit.contain,
          ),
          if (customTextWidget != null) ...[
            customTextWidget!,
          ] else if (text != null) ...[
            Text(
              text!,
              style: TextStyle(
                color: GlobalColors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
           if (extraWidget != null) ...[
            const SizedBox(height: 5),
            extraWidget!,
          ]
        ],
      ),
    );
  }
}
