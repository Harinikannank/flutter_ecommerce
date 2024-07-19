import 'package:flutter/material.dart';

class class2 extends StatefulWidget {
  const class2({super.key});

  @override
  State<class2> createState() => _class2State();
}

class _class2State extends State<class2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        const Text("This is cheatsheetpractice screen",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              height: 1.5,
            )),
        RichText(
          text: const TextSpan(children: [
            TextSpan(
              text: "hello",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  height: 1.5),
            ),
            TextSpan(
              text: "hello",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  height: 1.5),
            )
          ]),
        )
      ]),
    );
  }
}
