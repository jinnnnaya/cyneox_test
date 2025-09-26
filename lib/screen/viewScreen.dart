
import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({super.key});

  @override
  State<ViewScreen> createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              // width: 36,
              // height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white.withOpacity(0.8), width: 1.5),
                color: Colors.white.withOpacity(0.1),
              ),
              child: const Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/banner.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.25,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                     Container(
                      width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                        decoration: BoxDecoration(
                          color: GlobalColors.lightGey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,  
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 110),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pet Universe',
                                          style: TextStyle(
                                            color: GlobalColors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'One Stop Pets Solutions',
                                          style: TextStyle(
                                            color: GlobalColors.inactiveColor,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -40, 
                              left: 10,  
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/app.png',
                                  width: 90,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
