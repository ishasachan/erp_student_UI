import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [Color(0xff2855ae), Color(0xff7292cf)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Add your back button functionality here
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                            color: Colors.white, // Set the color to white
                          ),
                        ),
                        Text("Support",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30), // Adjust the spacing as needed
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/support.png",
                        width: 200,
                        height: 200,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text("Get Support",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            textAlign: TextAlign.center,
                            "For any support request regards your orders or deliveries please feel free to speak with us at below.",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      Text("Call us - +91 7838XXXXXX",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("Mail us - ishasachan30@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
