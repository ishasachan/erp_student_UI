import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Results",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40),
            // Circle at the center with text
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(
                    255, 30, 113, 255), // Same as background color
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255), // Border color
                  width: 10, // Border width
                ),
              ),
              child: Center(
                child: Text(
                  "550/700",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "You're Excellent",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Aisha!!",
              style: TextStyle(
                fontWeight: FontWeight.w800,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 197, 203, 213),
                ),
                child: ListView.builder(
                  padding: EdgeInsets.all(20),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 119, 161, 195),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 143, 151, 133),
                            blurRadius: 2.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "english",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "90/100",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            0,
                                            0,
                                            0,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 10,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "A",
                                    textAlign: TextAlign.start,
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
