import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:my_apptransaction/home/home_page.dart';

import 'package:my_apptransaction/sing/sign-In.dart';
import 'package:my_apptransaction/welcome/%20onboarding3.dart';
import 'package:my_apptransaction/welcome/onboarding2.dart';
import 'package:my_apptransaction/welcome/splashscreen.dart';
import 'package:my_apptransaction/search/search_page.dart';

import 'package:my_apptransaction/welcome/onboarding.dart';
// ignore: unused_import

import 'package:my_apptransaction/profile/profile_page.dart';
import 'package:my_apptransaction/settings/settings_page.dart';
import 'package:my_apptransaction/screens/cart_page.dart';
import 'package:my_apptransaction/screens/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final MaterialColor customPrimaryColor =
        MaterialColor(0xFF091336, <int, Color>{
          50: const Color.fromRGBO(9, 19, 54, 0.1),
          100: const Color.fromRGBO(9, 19, 54, 0.2),
          200: const Color.fromRGBO(9, 19, 54, 0.3),
          300: const Color.fromRGBO(9, 19, 54, 0.4),
          400: const Color.fromRGBO(9, 19, 54, 0.5),
          500: const Color.fromRGBO(9, 19, 54, 0.6),
          600: const Color.fromRGBO(9, 19, 54, 0.7),
          700: const Color.fromRGBO(9, 19, 54, 0.8),
          800: const Color.fromRGBO(9, 19, 54, 0.9),
          900: const Color.fromRGBO(9, 19, 54, 1.0),
        });

    // ایجاد ColorScheme به صورت جداگانه
    final colorScheme = ColorScheme.fromSwatch(
      primarySwatch: customPrimaryColor,
      backgroundColor: Colors.blue,
      brightness: Brightness.light,
    ).copyWith(
      surface: const Color.fromRGBO(9, 19, 54, 0.6),
      onSurface: const Color.fromARGB(255, 255, 255, 255),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: colorScheme.surface,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'RobotoMono',
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        colorScheme: colorScheme,
      ),
      home: const Splashscreen(),

      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/cart', page: () => const CartPage()),
        GetPage(name: '/stats', page: () => const StatsPage()),
        GetPage(name: '/settings', page: () => const SettingsPage()),
        GetPage(name: '/splashscreen', page: () => const Splashscreen()),
        GetPage(name: '/onboarding', page: () => const Onboarding()),
        GetPage(name: '/onboarding2', page: () => const Onboarding2()),
        GetPage(name: '/onboarding3', page: () => const Onboarding3()),
        GetPage(name: '/sign-in', page: () => const SignIn()),
        GetPage(name: '/search', page: () => const SearchPage()),
        GetPage(name: '/profile', page: () => const ProfilePage()),
      ],
    );
  }
}
