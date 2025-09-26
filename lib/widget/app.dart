
import 'package:cyneox_test/utils/global_color.dart';
import 'package:flutter/material.dart';

class AppInfoItem extends StatelessWidget {
  final Widget? icon;
  final String label;
  final String topText;
  final Widget bottomWidget; 
  const AppInfoItem({
    super.key,
    this.icon,
    required this.label,
    required this.topText,
    required this.bottomWidget,  
  });

  static const double labelHeight = 20;
  static const double topRowHeight = 30;
  static const double bottomTextHeight = 20;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: labelHeight,
          child: Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: GlobalColors.grey,
              ),
              textAlign: TextAlign.center,
              maxLines: 2, 
            ),
          ),
          SizedBox(
            height: topRowHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null)
                  IconTheme(
                    data: IconThemeData(size: 20, color: GlobalColors.grey),
                    child: icon!,
                  ),
                if (icon != null) const SizedBox(width: 4),
                Text(
                  topText,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20, color: GlobalColors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 4), 
          Center(child: bottomWidget),
        ],
      ),
    );
  }
}