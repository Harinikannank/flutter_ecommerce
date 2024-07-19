import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterfirst_project/productcard.dart';

import 'package:http/http.dart' as http;

class Projectlist extends StatefulWidget {
  const Projectlist({Key? key}) : super(key: key);

  @override
  State<Projectlist> createState() => _ProjectlistState();
}

class _ProjectlistState extends State<Projectlist> {

  var decodedBody={};
  var products=[];
  @override
  void initState(){
    super.initState();
    getAllProducts();
  }
  Widget build(BuildContext context) {
    List<Widget> productList = [];
    for (int i = 0; i < 30; i++) {
      productList.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Text(
          "ID",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),  Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(

                    image: AssetImage("assets/images/flutterimage.jpeg"),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "iPhone 9",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "An apple mobile which is nothing like apple",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => projectcard(        id: products[i]['id'],
                      image: products[i]['thumbnail'],
                      title: products[i]['title'],
                      description: products[i]['description'],
                      price: products[i]['price'],
                      rating:products[i]['rating'],
                    )),
                  );
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 24,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          '4.69',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                    SizedBox(width: 10.0), // Added SizedBox for spacing
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'RS. 480/-',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {
                            print('Button Pressed');
                          },
                          icon: const Icon(Icons.arrow_forward_ios),
                          label: const Text('Click'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        centerTitle: true,
        title: Text("GET ALL PRODUCTS"),
      ),
      body: ListView(
        children: productList,
      ),
    );
  }
  getAllProducts() async {
    print("Get All products triggered");
    String url ='https://dummyjson.com/products';

    var response = await http.get(Uri.parse(url));

    var responseBody = response.body;
     decodedBody = jsonDecode(response.body);
    //print(responseBody);

    products = decodedBody['products'];

    print(products.length);

    print(products[0]['title']);

    setState(() {

      print("setState triggered");
    });


  }
}


