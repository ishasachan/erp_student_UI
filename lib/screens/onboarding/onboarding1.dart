import 'package:erp_practise/screens/onboarding/onboarding2.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Center(
              child: Text(
                "Dating Couples",
                style: TextStyle(
                    color: const Color.fromARGB(255, 126, 51, 255),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/image1.png",
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Explore with just one Tap",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Discover a wide selection of wines, directly from your phone.",
                style: TextStyle(
                  color: Color.fromARGB(255, 210, 81, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          MaterialButton(
            color: Colors.amber,
            hoverColor: Colors.cyan,
            highlightElevation: 8,
            onPressed: () {
              Navigator.pushNamed(context, "/onboarding2");
            },
            child: Text("Next"),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
