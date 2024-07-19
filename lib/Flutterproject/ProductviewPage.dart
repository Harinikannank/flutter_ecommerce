import 'package:flutter/material.dart';
import 'package:flutterfirst_project/Flutterproject/AddToCart.dart';
import 'package:flutterfirst_project/Flutterproject/PaymentPage.dart';

class ProductviewPage extends StatefulWidget {
  const ProductviewPage({Key? key});

  @override
  State<ProductviewPage> createState() => _ProductviewPageState();
}

class _ProductviewPageState extends State<ProductviewPage> {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CategoriesWidget(),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Lipsticks",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ItemsWidget(),
            ],
          ),
        ),
      ],

    );
  }
}


class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Category 1
          CategoryItem(
            imagePath: "assets/images/Projectimages/lipstick.jpeg",
            label: "Lipstick",
          ),
          // Category 2
          CategoryItem(
            imagePath: "assets/images/Projectimages/nailpaints.jpeg",
            label: "Nail Paints",
          ),
          // Category 3
          CategoryItem(
            imagePath: "assets/images/Projectimages/eyeliner.jpeg",
            label: "Eyeliner",
          ),
          // Category 4
          CategoryItem(
            imagePath: "assets/images/Projectimages/foundation.jpeg",
            label: "Foundation",
          ),
          // Category 5
          CategoryItem(
            imagePath: "assets/images/Projectimages/blushes.jpeg",
            label: "Blushes",
          ),
          // Category 6
          CategoryItem(
            imagePath: "assets/images/Projectimages/compacts.jpeg",
            label: "Compacts",
          ),
          // Category 7
          CategoryItem(
            imagePath: "assets/images/Projectimages/perfumes.jpeg",
            label: "Perfumes",
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;

  CategoryItem({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 10), // Spacing between image and text
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}


class ItemsWidget extends StatefulWidget {
  const ItemsWidget({Key? key});

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount:2 ,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF4C53A5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "-50%",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      "assets/images/Projectimages/lipstick.jpeg",
                      height: 160,
                      width: 160,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Lipsticks",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lipstick is a waxy, slightly creamy substance in a stick that's tinted with red pigment that colors your lips. It's a cosmetic that dates back at least to medieval times, and probably even farther back than that.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF4C53A5),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RS. 150",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0xFF4C53A5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartPage()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}





