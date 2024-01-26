import 'package:erp_practise/screens/Dashboard.dart';
import 'package:erp_practise/screens/auth/login_screen.dart';
import 'package:erp_practise/screens/auth/sign_screen.dart';
import 'package:erp_practise/screens/fees.dart';
import 'package:erp_practise/screens/home.dart';
import 'package:erp_practise/screens/onboarding/onboarding1.dart';
import 'package:erp_practise/screens/onboarding/onboarding2.dart';
import 'package:erp_practise/screens/resultscreen.dart';
import 'package:erp_practise/screens/support_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => const OnBoarding1(),
  '/onboarding2': (BuildContext context) => const OnBoarding2(),
  '/login': (BuildContext context) => LoginScreen(),
  '/signup': (BuildContext context) => SignUpScreen(),
  '/home': (BuildContext context) => const HomePage(),
  '/result': (BuildContext context) => const ResultScreen(),
  '/fees': (BuildContext context) => const FeeScreen(),
  '/dashboard': (BuildContext context) => const DashboardProfile(),
  '/support': (BuildContext context) => const SupportScreen(),
  // We can add other screens similarly
  // '/about': (BuildContext context) => const AboutScreen(),
};
