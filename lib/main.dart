import 'package:erp_practise/controllers/bindings.dart';
import 'package:erp_practise/utils/routes.dart';
import 'package:erp_practise/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: "/",
      initialBinding: AllBinder(),
    );
  }
}
