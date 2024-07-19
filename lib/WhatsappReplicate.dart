import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfirst_project/bottomnavigation.dart';
import 'package:flutterfirst_project/contactcard.dart';

class WhatsAppReplicate extends StatelessWidget {
  const WhatsAppReplicate({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // headLine
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 100),
                        child: Text(
                          "Whatsapp",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 27,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.camera_alt_outlined,
                                size: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.more_vert,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //search
                Container(
                  height: 55,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      hintText: 'Search..',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(40),
                        // borderSide: const BorderSide(color: Colors.grey, width: 1),
                        // borderRadius: BorderRadius.circular(30),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30),
                        // borderSide: const BorderSide(color: Colors.grey, width: 1),
                        // borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),

                //Archived
                Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.green,
                  //   borderRadius: BorderRadius.only(
                  //     topLeft: Radius.circular(20.0),
                  //     bottomRight: Radius.circular(20.0),
                  //   ),
                  // ),
                  // padding: EdgeInsets.all(9),
                  // color: Colors.grey,
                  // width: 600,
                  // height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.archive_outlined,
                        size: 25,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          'Archived',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        '14',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),

                for (int i = 0; i < 10; i++)
                  // contact card
                  contactcard(),
              ],
            ),
          ),
          //bottomnavigation
          Positioned(
            bottom: 0,
            child: bottomnavigation(),
          ),
        ],
      ),
    );
  }
}
