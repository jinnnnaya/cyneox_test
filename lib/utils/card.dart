import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class AppCard extends StatelessWidget {
  final String imagePath;
  final String appName;
  final String appSize;
  final VoidCallback? onInstallPressed;
  final Gradient? gradient;
  final int? index; 

  const AppCard({
    super.key,
    required this.imagePath,
    required this.appName,
    required this.appSize,
    this.onInstallPressed,
    this.gradient,
    this.index, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      child: Stack(
        clipBehavior: Clip.none, 
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: gradient ?? GlobalColors.mainGradient,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagePath,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    appName,
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    appSize,
                    style: TextStyle(
                      color: GlobalColors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: onInstallPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      minimumSize: const Size(double.infinity, 35),
                    ),
                    child: Text(
                      'Install',
                      style: TextStyle(
                        color: GlobalColors.bgColor,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          if (index != null)
            Positioned(
              top: -10,
              left: 0,
              right: 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: GlobalColors.mainColor,
                  shape: BoxShape.circle,
                
                ),
                alignment: Alignment.center,
                child: Text(
                  '$index', 
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
