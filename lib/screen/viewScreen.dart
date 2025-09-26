import 'package:cyneox_test/utils/main_button.dart';
import 'package:cyneox_test/widget/app.dart';
import 'package:cyneox_test/widget/viewApp/viewAppCard.dart';
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
                border: Border.all(color: GlobalColors.white.withOpacity(0.8), width: 1.5),
                color:  GlobalColors.white.withOpacity(0.1),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color:  GlobalColors.white,
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
                  top: screenHeight * 0.20,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                          color: GlobalColors.lightGey,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 120),
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
                                      const SizedBox(height: 4),
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
                                const SizedBox(height: 40),
                                SizedBox(
                                  height: 90, 
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      AppInfoItem(
                                        label: '380 RATINGS',
                                        topText: '4.6',
                                        bottomWidget:Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: List.generate(5, (index) => Icon(Icons.star, color: Colors.yellow, size: 10)),
                                                ),
                                      ),
                                      SizedBox(
                                        height: 30, 
                                        child: VerticalDivider(
                                          thickness: 1,
                                          color: GlobalColors.grey,
                                        ),
                                      ),
                                      AppInfoItem(
                                        label: 'AGE',
                                        topText: '4+',
                                      bottomWidget:  Text(
                                          'Years Old',
                                          style: TextStyle(fontSize: 10, color: GlobalColors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30, 
                                        child: VerticalDivider(
                                          thickness: 1,
                                          color: GlobalColors.grey,
                                        ),
                                      ),
                                      AppInfoItem(
                                        label: 'Category',
                                        icon: Icon(Icons.health_and_safety, size: 20),
                                        topText: '',
                                        bottomWidget:  Text(
                                          'Health & Life',
                                          style: TextStyle(fontSize: 10, color: GlobalColors.grey),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30, 
                                        child: VerticalDivider(
                                          thickness: 1,
                                          color: GlobalColors.grey,
                                        ),
                                      ),
                                      AppInfoItem(
                                        label: 'DEVELOPER',
                                        icon: Icon(Icons.business, size: 20),
                                        topText: '',
                                      bottomWidget:Text(
                                          'Cyneox Sdn Bhd',
                                          style: TextStyle(fontSize: 10, color: GlobalColors.grey),
                                          textAlign: TextAlign.center,
                                        ), 
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: GlobalColors.inactiveColor,
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                                Text('Discover the ultimate pet app for all your needs! Form veterinary care and breeding services to a virtual pet store, pet cafes, grooming, and pet food supply. Treat your furry friend a delightful experience.',  style: TextStyle(fontSize: 16, color: GlobalColors.grey)),
                                SizedBox(height: 30),
                                SizedBox(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        ViewAppCard(
                                          imagePath: 'assets/images/pets.png',
                                          appName: 'Your Beloved Pet Feeling Unwell?',
                                          appDesc: 'Speak to our vet now',
                                          backgroundColor: GlobalColors.blue,
                                          onInstallPressed: () {},
                                        ),
                                        ViewAppCard(
                                          imagePath: 'assets/images/pets2.png',
                                          appName: 'Pet Care',
                                          appDesc: 'Get started with our new offers.',
                                          backgroundColor: GlobalColors.gold,
                                          onInstallPressed: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Center(
                                  child: Padding(
                                     padding: const EdgeInsets.symmetric(vertical: 20),
                                     child: MainButton(
                                        onPressed: () {},
                                        text: 'Install Now',
                                        width: double.infinity,
                                      ),
                                   ),
                                ),
                              ],
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
