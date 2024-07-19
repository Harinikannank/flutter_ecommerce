import 'package:flutter/material.dart';

class bottomnavigation extends StatelessWidget {
  const bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(top: 10, bottom: 0),
      padding: EdgeInsets.only(top:10),
      color: Colors.grey.shade50,
      // width: 800,
      // height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.chat_sharp,
                    ),
                    Positioned(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      right: 0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Chats",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Stack(
                  children: [
                    Icon(
                      Icons.update_sharp,
                    ),
                    Positioned(
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      right: 0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Updates",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Icon(
                  Icons.person_3_outlined,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Communities",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              children: [
                Icon(
                  Icons.call_sharp,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Calls",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
