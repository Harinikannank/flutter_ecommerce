import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.green,size:40),
          onPressed: () {
            // Implement back button functionality here
          },
        ),
        title: Text(
          'Notification',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NotificationTile(
              color: Colors.orange,
              title: 'Action required: Verify your email address to save your progress',
            ),
            SizedBox(height: 16.0),
            NotificationTile(
              color: Colors.blue,
              title: 'Check in Write: IELTS exam for summer Admission',
            ),
            SizedBox(height: 16.0),
            NotificationTile(
              color: Colors.purple,
              title: 'Reminder: Turn in final coursework',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Color color;
  final String title;

  NotificationTile({required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(CupertinoIcons.clear_circled_solid, color: Colors.black),
            onPressed: () {
              // Implement close button functionality here
            },
          ),
        ],
      ),
    );
  }
}
