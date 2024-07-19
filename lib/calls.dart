import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        //leading:Icon(Icons.arrow_back_sharp),
        centerTitle: true,
        title: Text("Calls"),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 30),
              child: Icon(Icons.camera_alt_outlined)),
          Container(
              margin: EdgeInsets.only(right: 30), child: Icon(Icons.more_vert)),
        ],
      ),
      bottomNavigationBar: bottomnavigation(),
    );
  }
}
