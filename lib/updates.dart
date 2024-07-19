import 'package:flutter/material.dart';

import 'bottomnavigation.dart';

class updates extends StatefulWidget {
  const updates({super.key});

  @override
  State<updates> createState() => _State();
}

class _State extends State<updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        //leading:Icon(Icons.arrow_back_sharp),
        centerTitle: true,
        title: Text("Updates"),
        actions:[
          Container(

              margin: EdgeInsets.only(right: 30),

              child:Icon(Icons.camera_alt_outlined)),
          Container(
              margin: EdgeInsets.only(right: 30),
              child:Icon(Icons.more_vert)),
        ],
      ),
      bottomNavigationBar: bottomnavigation(),



        );
  }
}

