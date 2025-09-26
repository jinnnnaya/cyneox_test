import 'package:cyneox_test/utils/search_bar.dart';
import 'package:cyneox_test/utils/card.dart';
import 'package:cyneox_test/widget/cloud.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:cyneox_test/utils/global_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final List<String> dropdownOptions = ['Editor\'s Choice', 'Pet', 'Game'];
    String dropdownValue = 'Editor\'s Choice';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: screenHeight * 0.45,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  child: SearchBarWidget(),
                ),
                Positioned(
                  top: screenHeight * 0.25,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: GlobalColors.lightGey,
                        borderRadius: BorderRadius.circular(25),
                        ),
                        child: Column(
                          children: [
                            const CloudServicesRow(),
                            const SizedBox(height: 5),
                            Divider(
                              color: GlobalColors.inactiveColor,
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/images/app.png', 
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
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
                                                  const SizedBox(height: 3),
                                                  Row(
                                                    children: List.generate(5, (index) => const Icon(
                                                      Icons.star,
                                                      size: 16,
                                                      color: Colors.yellow,
                                                    )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: GlobalColors.mainColor,
                                                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                                                   minimumSize: const Size(0, 35), 
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                              ),
                                              child: Text(
                                                'Install',
                                                style: TextStyle(fontSize: 14, color: GlobalColors.white),
                                              ),
                                            ),
                                          ],
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
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                       decoration: BoxDecoration(
                          color: Colors.transparent, 
                          border: Border(
                            bottom: BorderSide(
                              color: GlobalColors.mainColor,
                              width: 2,
                            ),
                          ),
                        ),
                        width: double.infinity, 
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            value: dropdownValue,
                            selectedItemBuilder: (BuildContext context) {
                              return  dropdownOptions.map((String value) {
                                return Container(
                                  alignment: Alignment.centerLeft,
                                  height: 30,                      
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: GlobalColors.white,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                            items:  dropdownOptions.map((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 14,       
                                    fontWeight: FontWeight.normal,
                                    color: GlobalColors.white,
                                  ),
                                ),
                              );
                            }).toList(),
                            iconStyleData: IconStyleData(
                              icon: Icon(Icons.chevron_right, color: GlobalColors.white),
                            ),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                color: GlobalColors.bgColor,
                                border: Border.all(
                                  color: GlobalColors.mainColor,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            isExpanded: true,
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  dropdownValue = newValue;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 250,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: Row(
                            children: [
                              AppCard(
                                imagePath: 'assets/images/app.png',
                                appName: 'Pet Universe',
                                appSize: '42MB',
                                gradient: GlobalColors.mainGradient,
                                  index: 1,
                                onInstallPressed: () {},
                              ),
                              AppCard(
                                imagePath: 'assets/images/app.png',
                                appName: 'Citimap',
                                appSize: '28MB',
                                gradient: GlobalColors.secGradient,
                                index: 2,
                                onInstallPressed: () {},
                              ),
                              AppCard(
                                imagePath: 'assets/images/app.png',
                                appName: 'Optmimi',
                                appSize: '28MB',
                                gradient: GlobalColors.thirGradient,
                                index: 3,
                                onInstallPressed: () {},
                              ),
                            ],
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
    );
  }
}
