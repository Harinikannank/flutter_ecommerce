import 'package:flutter/material.dart';

class projectcard extends StatefulWidget {
  const projectcard({super.key, required this.id, required this.image, required this.title, required this.description, required this.rating, required this.price});

  final int id;
  final String image;
  final String title;
  final String description;
  final double rating;
  final double price;

  @override
  State<projectcard> createState() => _projectcardState();
}

class _projectcardState extends State<projectcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("GET CATEGORY"),
      ),
      body: Center(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.blue,
          child: SizedBox(
            width: 800,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(widget.image),
                      ),
                    ),
                    child:                         Text(widget.id.toString()),

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Only 24 left',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Discountpercentage: 12.96',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Price: Rs. ${widget.price}',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.rating.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}