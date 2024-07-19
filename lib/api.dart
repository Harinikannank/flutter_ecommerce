import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController lastnamecontroller=TextEditingController();
  TextEditingController phonecontoller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController confirmcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextFormField(controller:namecontroller,decoration: InputDecoration(labelText: "First Name" ),),
        TextFormField(controller:lastnamecontroller,decoration: InputDecoration(labelText: "Last Name" ),),
        TextFormField(controller:phonecontoller,decoration: InputDecoration(labelText: "Phone" ),),
        TextFormField(controller:emailcontroller,decoration: InputDecoration(labelText: "Email" ),),
        TextFormField(controller:passwordcontroller,decoration: InputDecoration(labelText: "Password" ),),
        TextFormField(controller:confirmcontroller,decoration: InputDecoration(labelText: "Confirm Password" ),),
        ElevatedButton(
            onPressed: () async {
              print("This is user get");

              String url = "https://flutter-backend-drk6.onrender.com/user_get";

              var response = await http.get(Uri.parse(url));

              print(response.body);
            },
            child: Text("user_get")),
        ElevatedButton(
            onPressed: () async {
              print("This is user get one");

              String url =
                  "https://flutter-backend-drk6.onrender.com/user_getone/664c314d18d5c25772451a9a";

              var response = await http.get(Uri.parse(url));

              print(response.body);
            },
            child: Text("user_getone")),
        ElevatedButton(
            onPressed: () async {
              print("This is user post");

              String url =
                  "https://flutter-backend-drk6.onrender.com/user_post";
              var body = {
                "firstName": "Harini developer",
                "lastName": "test",
                "phone": 12345678,
                "email": "harini@gmail.com",
                "password": "123",
                "confirmPassword": "123"
              };
              var response = await http.post(Uri.parse(url),
                  body: jsonEncode(body),
                  headers: {"Content-Type": "application/json"});
              print(response.body);
            },
            child: Text("user_post")),
      ],
    ));
  }
}
