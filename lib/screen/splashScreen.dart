import 'package:cyneox_test/utils/main_button.dart';
import 'package:cyneox_test/widget/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:cyneox_test/utils/global_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _controller = PageController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         PageView(  
          controller: _controller,
            children: [
              SplashPageWidget(
                customTextWidget: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: 'Cyneox ',
                          style: TextStyle(color:GlobalColors.mainColor),
                        ),
                        TextSpan(
                          text: 'Test 4 You',
                          style: TextStyle(color: GlobalColors.white),
                        ),
                      ],
                    ),
                  ),
                 extraWidget: Text(
                  'Hello & welcome to the test, good luck!',
                  style: TextStyle(color: GlobalColors.inactiveColor, fontSize: 16),
                ),
                imagePath: 'assets/images/logo.png',
              ),
              SplashPageWidget(
                customTextWidget: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'Hassle-free',
                        style: TextStyle(color:GlobalColors.mainColor),
                      ),
                      TextSpan(
                        text: ' Application',
                        style: TextStyle(color: GlobalColors.white),
                      ),
                    ],
                  ),
                ),
                extraWidget: Text(
                  'Quick & easy application, lorem ipsum',
                  style: TextStyle(color: GlobalColors.inactiveColor, fontSize: 16),
                ),
                imagePath: 'assets/images/image2.png',
                imageHeight: 200,
                contentPadding: const EdgeInsets.fromLTRB(24, 40, 24, 200), 
              ),
              SplashPageWidget(
                customTextWidget: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'Fantastic',
                        style: TextStyle(color:GlobalColors.mainColor),
                      ),
                      TextSpan(
                        text: ' Review',
                        style: TextStyle(color: GlobalColors.white),
                      ),
                    ],
                  ),
                ),
                extraWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '5-stars customer raiting, experience service like no orther', 
                     textAlign: TextAlign.center,
                    style: TextStyle(color: GlobalColors.inactiveColor, fontSize: 16),
                  ),
                ),
                imagePath: 'assets/images/image3.png',
                imageHeight: 200,
                contentPadding: const EdgeInsets.fromLTRB(24, 40, 24, 200), 
              ),
              SplashPageWidget(
                text: 'Get Started',
                imagePath: 'assets/images/image4.png',
                imageHeight: 200,
                contentPadding: const EdgeInsets.fromLTRB(24, 40, 24, 100), 
                 customTextWidget: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'The Cyneox',
                        style: TextStyle(color:GlobalColors.mainColor),
                      ),
                      TextSpan(
                        text: ' Magic',
                        style: TextStyle(color: GlobalColors.white),
                      ),
                    ],
                  ),
                ),
               extraWidget: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, 
                    children: [
                      Text(
                        'We transform concepts into platforms which vividly display your stories!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: GlobalColors.inactiveColor, fontSize: 16),
                      ),
                      const SizedBox(height: 50), 
                     MainButton(
                       onPressed: () {
                          print("Get Started pressed");
                          Get.offNamed('/login');
                        },
                        text: 'Get Started!',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: WormEffect(
                  dotColor: GlobalColors.inactiveColor,
                  activeDotColor: GlobalColors.mainColor,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 8,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
