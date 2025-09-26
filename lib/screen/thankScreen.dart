import 'package:cyneox_test/widget/splash.dart';
import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class ThankScreen extends StatelessWidget {
  const ThankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalColors.bgColor,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SplashPageWidget(
          customTextWidget: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Thank',
                  style: TextStyle(color: GlobalColors.mainColor),
                ),
                TextSpan(
                  text: ' You',
                  style: TextStyle(color: GlobalColors.white),
                ),
              ],
            ),
          ),
         extraWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal:30.0),
            child: Text(
              'Thank you for spending your time on the test.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: GlobalColors.inactiveColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
