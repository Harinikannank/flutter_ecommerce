//
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// class screenpage extends StatefulWidget {
//   const screenpage({super.key});
//
//   @override
//   State<screenpage> createState() => _screenpageState();
// }
//
// class _screenpageState extends State<screenpage> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child:Container(
//       decoration: BoxDecoration(
//         color:Colors.white,
//       ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment:
//               MainAxisAlignment.center,
//           children: [
//             Container(decoration: BoxDecoration(border: Border.all(color: Colors.black)),margin: EdgeInsets.all(10),
//             child:
//             Image.asset(
//               "assets/images/flutterimage.jpeg",
//               width: 200,
//               height: 200,
//             ),
//             )
//             ],
//             ),
//
//             Row(
//
//               children: [
//                 Expanded(
//                   child: Column(
//                     children: [
//                       const Text("Oeschinen Lake Campground",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                           )),
//                       const Text("Kandergound,Switzerland",
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: Colors.grey,
//                             fontWeight: FontWeight.bold,
//                           )),
//                     ],
//                   ),
//                 ),
//                 Align(
//                  child:Icon(Icons.star,
//                   color: Colors.red,
//                   size: 18,
//                 ),
//                 alignment: Alignment.topRight,),
//                 const Text("41",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ],
//             ),
//             Row(
//
//               children: [
//                 Expanded(child:Column(children:[Icon(
//                   Icons.call,
//                   color: Colors.blue,
//                 ),
//
//                 const Text("CALL",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 Expanded(child:Column(children:[Icon(
//                   Icons.route,
//                   color: Colors.blue,
//                 ),
//                 const Text("ROUTE",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     )),
//                 Expanded(child:Column(children:[Icon(
//                   Icons.share,
//                   color: Colors.blue,
//                 ),
//                 const Text("ROUTE",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.blue,
//                       fontWeight: FontWeight.bold,
//                     )),
//               ],
//             ),
//
//           ],
//         ));
//   }
// }
//
