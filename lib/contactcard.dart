import 'package:flutter/material.dart';

class contactcard extends StatelessWidget {
  const contactcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // color: Colors.grey,
      // padding: const EdgeInsets.all(20.0),
      margin:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image:
                AssetImage("assets/images/flutterimage.jpeg"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Why Global Services",
                  style: TextStyle(
                    color: Colors.black,
                  )),
              Text("Provide proper information",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
            ],
          ),
          Spacer(),
          Container(
            width: 50,
            // color: Colors.red,
            child: Text("10:52"),
          ),
        ],
      ),
    );
  }
}
