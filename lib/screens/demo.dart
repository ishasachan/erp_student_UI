// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
 
//             Stack(
//               children: [
//                 Positioned(
//                   top: 50,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(30)),
//                     width: double.infinity,
//                     child: Column(
//                       children: [
//                         Text("WHite box"),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 100,
//                   left: 0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 200,
//                         margin: EdgeInsets.all(10),
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Column(
//                           children: [
//                             Image.asset(
//                               "assets/images/schollar.png",
//                               width: 50,
//                               height: 50,
//                             ),
//                             SizedBox(height: 8),
//                             Text("80.39 %",
//                                 style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                             Text("Attendance",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.all(10),
//                         padding: EdgeInsets.all(20),
//                         width: 200,
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: Column(
//                           children: [
//                             Image.asset(
//                               "assets/images/ic_fees_due.png",
//                               width: 50,
//                               height: 50,
//                             ),
//                             SizedBox(height: 8),
//                             Text("₹6400",
//                                 style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                             Text("Fees Due",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w400,
//                                 )),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
