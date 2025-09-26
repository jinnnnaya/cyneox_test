import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class ViewAppCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  final String appDesc;
  final VoidCallback? onInstallPressed;
  final Gradient? gradient;
  final Color? backgroundColor;

  const ViewAppCard({
    super.key,
    required this.imagePath,
    required this.appName,
    required this.appDesc,
    this.onInstallPressed,
    this.gradient,
    this.backgroundColor,
  });

 @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 12),
      height: 170,
      decoration: BoxDecoration(
        color: backgroundColor ?? GlobalColors.bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appName,
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    appDesc,
                    style: TextStyle(
                      color: GlobalColors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: onInstallPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.bgColor,
                      foregroundColor: GlobalColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      minimumSize: const Size(120, 35),
                    ),
                    child: const Text('Book Now'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}