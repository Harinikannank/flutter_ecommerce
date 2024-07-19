import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/flutterimage.jpeg",
          width: 200,
          height: 200,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border.all(),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  const Text("Oeschinen Lake Campground",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  const Text("Kandergound,Switzerland",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 18,
            ),
            const Text("41",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.call,
              color: Colors.blue,
            ),
            const Text("CALL",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            Icon(
              Icons.route,
              color: Colors.blue,
            ),
            const Text("ROUTE",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            Icon(
              Icons.share,
              color: Colors.blue,
            ),
            const Text("ROUTE",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        const Text(
            "Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top station of the cable car. Several hotels around the lake offer rooms in summer. Restaurants are open in winter and summer. The region belongs to the Unesco heritage Jungfrau-Aletsch.",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ))
      ],
    ));
  }
}
