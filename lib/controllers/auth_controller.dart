import 'dart:convert';

import 'package:erp_practise/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

//login
  Future<void> loginUser() async {
    try {
      String enrollmentId = emailController.text;
      String password = passwordController.text;
      final response = await http.post(
        Uri.parse('${Constants.apiURL}/student/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'enrollmentId': enrollmentId,
          'password': password,
        }),
      );
      debugPrint(response.body);
      if (response.statusCode == 200) {
        Get.toNamed("/home");
        Get.snackbar('Login Success', 'Login Successful',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } else if (response.statusCode == 409) {
        Get.snackbar('Failed to Login', 'Student already exist.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else {
        Get.snackbar('Failed to Login', "Failed to Login",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }

//register/signup
  Future<void> signUp() async {
    try {
      String emailId = emailController.text;
      String password = passwordController.text;
      print("resgisn");
      final response = await http.post(
        Uri.parse('${Constants.apiURL}/student/register'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'enrollmentId': emailId,
          'password': password,
        }),
      );
      debugPrint(response.body);
      if (response.statusCode == 200) {
        Get.toNamed("/home");
        Get.snackbar('Signup Success', 'SignUp Successful',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } else if (response.statusCode == 409) {
        Get.snackbar('Failed to SignUp', 'Student already exist.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      } else {
        Get.snackbar('Failed to SignUp', "Failed to SignUp",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }
}
