import 'package:cyneox_test/screen/homeScreen.dart';
import 'package:cyneox_test/screen/loginScreen.dart';
import 'package:cyneox_test/screen/splashScreen.dart';
import 'package:cyneox_test/utils/global_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'cyneox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         scaffoldBackgroundColor: GlobalColors.bgColor,   
         textSelectionTheme: TextSelectionThemeData(
            cursorColor: GlobalColors.mainColor,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(GlobalColors.bgColor),
            ),
          ),
          appBarTheme: AppBarTheme(
          backgroundColor: GlobalColors.bgColor,       
          ),
      ),
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => const SplashScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/home', page: () => const HomeScreen())
      ],
    );
  }
}
