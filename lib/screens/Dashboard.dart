import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class DashboardProfile extends StatelessWidget {
  const DashboardProfile({Key? key});

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
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white, // Set the color to white
                          ),
                        ),
                        Text("My Profile",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your 'Done' button functionality here
                      print("Done button tapped!");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            Colors.white, // Set the background color to white
                      ),
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 20, top: 30), // Add margin
                      child: Row(
                        children: [
                          Icon(
                            Icons.done,
                            size: 20,
                            color: Colors.blue, // Set the color as desired
                          ),
                          SizedBox(
                              width: 8), // Add spacing between icon and text
                          Text(
                            'Done',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 500,
                          height: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: Colors.blueAccent,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.all(16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Akshay Syal",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    Row(
                                      children: [
                                        Text("Class XI-B  |  Roll no: 04",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.camera_alt),
                                  ],
                                )
                              ]),
                        ),
                        Wrap(
                          children: [
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: true,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                            infofield(
                              label: "Admission",
                              text: "2020",
                              isLock: false,
                            ),
                          ],
                        )
                      ],
                    ),
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

class infofield extends StatelessWidget {
  final String label;
  final String text;
  final bool isLock;
  infofield(
      {super.key,
      required this.label,
      required this.text,
      required this.isLock});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              if (isLock) Icon(Icons.lock),
            ],
          ),
          Container(
            width: double.infinity,
            height: 1, // Border thickness
            color: Colors.grey, // Border color
            margin: EdgeInsets.only(top: 10), // Margin from the top
          ),
        ],
      ),
    );
  }
}
