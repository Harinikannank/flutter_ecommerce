import 'package:flutter/material.dart';
import 'package:flutterfirst_project/Flutterproject/AddToCart.dart';
import 'package:flutterfirst_project/Flutterproject/ProductView.dart';
import 'package:flutterfirst_project/Flutterproject/WishList.dart';

class ProductListing extends StatefulWidget {
  const ProductListing({super.key});

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Product Listing',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Top image with gradient overlay
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/productlistimage.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.favorite, color: Colors.red),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => WishList()),
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.shopping_cart, color: Colors.blue),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => CartPage()),
                                );
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Our Products",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "VIEW MORE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Categories section
              buildSection(title: "Categories", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/skincare.jpeg',
                    title: 'Skincare'),
                makeCategory(
                    image: 'assets/images/Projectimages/Cosmetics.jpeg',
                    title: 'Cosmetics'),
                makeCategory(
                    image: 'assets/images/Projectimages/Traditionalwear.jpeg',
                    title: 'Traditional wear'),
                makeCategory(
                    image: 'assets/images/Projectimages/Westernwear.jpeg',
                    title: 'Western wear'),
                makeCategory(
                    image: 'assets/images/Projectimages/essentials.jpeg',
                    title: 'Essentials'),
                makeCategory(
                    image: 'assets/images/Projectimages/newarrival.jpeg',
                    title: 'New Arrivals'),
              ]),
              SizedBox(height: 20),
              // Skincare section
              buildSection(title: "Skincare", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/Facial kit.jpeg',
                    title: 'Facial Kit'),
                makeCategory(
                    image: 'assets/images/Projectimages/sunscreen.jpeg',
                    title: 'Sun screen'),
                makeCategory(
                    image: 'assets/images/Projectimages/Moisturizer.jpeg',
                    title: 'Moisturizer'),
                makeCategory(
                    image: 'assets/images/Projectimages/cleanser.jpeg',
                    title: 'Cleanser'),
                makeCategory(
                    image: 'assets/images/Projectimages/toner.jpeg',
                    title: 'Toner'),
                makeCategory(
                    image: 'assets/images/Projectimages/skincareoil.jpeg',
                    title: 'Skincare oil'),
              ]),
              SizedBox(height: 20),
              // Cosmetics section
              buildSection(title: "Cosmetics", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/lipstick.jpeg',
                    title: 'Lipsticks and Glosses'),
                makeCategory(
                    image: 'assets/images/Projectimages/nailpaints.jpeg',
                    title: 'Nail paints and accessories'),
                makeCategory(
                    image: 'assets/images/Projectimages/eyeliner.jpeg',
                    title: 'Eyeliner & pencils'),
                makeCategory(
                    image: 'assets/images/Projectimages/foundation.jpeg',
                    title: 'Foundations and Concealers'),
                makeCategory(
                    image: 'assets/images/Projectimages/blushes.jpeg',
                    title: 'Blushes and Bronzers'),
                makeCategory(
                    image: 'assets/images/Projectimages/compacts.jpeg',
                    title: 'Compacts and Primers'),
                makeCategory(
                    image: 'assets/images/Projectimages/perfumes.jpeg',
                    title: 'Perfumes'),
                makeCategory(
                    image: 'assets/images/Projectimages/eyeshadow.jpeg',
                    title: 'Eye shadows'),
                makeCategory(
                    image: 'assets/images/Projectimages/Bindis.png',
                    title: 'Bindis'),
              ]),
              SizedBox(height: 20),
              // Traditional wear section
              buildSection(title: "Traditional wear", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/Silksaree.jpeg',
                    title: 'Silk Sarees'),
                makeCategory(
                    image: 'assets/images/Projectimages/cottonsaree.jpeg',
                    title: 'Cotton Sarees'),
                makeCategory(
                    image: 'assets/images/Projectimages/Banarasi.jpeg',
                    title: 'Banarasi'),
              ]),
              SizedBox(height: 20),
              // Western wear section
              buildSection(title: "Western wear", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/Jeans.jpeg',
                    title: 'Jeans and Shirts'),
                makeCategory(
                    image: 'assets/images/Projectimages/cottonkurti.jpeg',
                    title: 'Cotton Kurtis'),
                makeCategory(
                    image: 'assets/images/Projectimages/silkkurti.jpeg',
                    title: 'Silk Kurtis'),
              ]),
              SizedBox(height: 20),
              // Essentials section
              buildSection(title: "Essentials", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/handbags.jpeg',
                    title: 'Handbags'),
                makeCategory(
                    image: 'assets/images/Projectimages/coolers.jpeg',
                    title: 'Coolers'),
                makeCategory(
                    image: 'assets/images/Projectimages/wallets.jpeg',
                    title: 'Wallets'),
              ]),
              SizedBox(height: 20),
              // New Arrivals section
              buildSection(title: "New Arrivals", items: [
                makeCategory(
                    image: 'assets/images/Projectimages/cocktail.jpeg',
                    title: 'Cocktail dress'),
                makeCategory(
                    image: 'assets/images/Projectimages/nauvari.jpeg',
                    title: 'Nauvari sarees'),
                makeCategory(
                    image: 'assets/images/Projectimages/watches.jpeg',
                    title: 'Latest watches'),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSection({required String title, required List<Widget> items}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: items,
            ),
          ),
        ],
      ),
    );
  }

  Widget makeCategory({required String image, required String title}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductView()),
        );
      },
      child: AspectRatio(
        aspectRatio: 2 / 2.2,
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image), // Ensure this path is correct
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
