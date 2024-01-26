import 'package:erp_practise/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final AuthController SignUp = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 198, 157),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "Password",
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: Icon(Icons.remove_red_eye),
              border: OutlineInputBorder(),
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: SignUp.signUp,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 218, 128, 64),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                  child: Text(
                "Signup",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already Have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 228, 9, 9),
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
