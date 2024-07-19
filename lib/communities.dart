import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

class communities extends StatefulWidget {
  const communities({super.key});

  @override
  State<communities> createState() => _State();
}

class _State extends State<communities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        //leading:Icon(Icons.arrow_back_sharp),
        centerTitle: true,
        title: Text("Communities"),
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
