import 'package:flutter/material.dart';
import 'package:flutterfirst_project/Flutterproject/Review.dart';
import 'package:flutterfirst_project/Flutterproject/ProductListing.dart';
import 'package:flutterfirst_project/Flutterproject/WishList.dart';
import '../bottomnavigation.dart';
import 'AddToCart.dart';
import 'Review.dart';


const url = "https://meharinikannan.me";
const email = "me.harini007@gmail.com";
const phone = "91 9988776655";
const location = "Chennai, India";

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        minimum: const EdgeInsets.all(50),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/flutterhomepage.jpeg'),
            ),
            Text(
              "Harini Kannan",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),

            InfoCard(text: phone, icon: Icons.phone, onPressed: () async {}),
            InfoCard(text: url, icon: Icons.web, onPressed: () async {}),
            InfoCard(text: location, icon: Icons.location_city, onPressed: () async {}),
            InfoCard(text: email, icon: Icons.email, onPressed: () async {}),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}


class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;

  const InfoCard({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.teal,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(top: 10, bottom: 0),
      padding: EdgeInsets.only(top: 10),
      color: Colors.grey.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductListing()),
              );
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Icon(Icons.format_list_bulleted_outlined),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Product Lists",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishList()),
              );
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Icon(Icons.healing_rounded),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Wishlist",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Review()),
              );
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Column(
                children: [
                  Icon(Icons.reviews_outlined),
                  SizedBox(height: 10),
                  Text(
                    "Review",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 4,
              child: Column(
                children: [
                  Icon(Icons.view_comfy_alt_rounded),
                  SizedBox(height: 10),
                  Text(
                    "Add to cart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

