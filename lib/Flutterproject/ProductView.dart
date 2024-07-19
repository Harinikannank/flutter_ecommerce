import 'package:flutter/material.dart';

import 'ProductviewPage.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Product View'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sort,
                      size: 30,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
                Badge(
                  badgeColor: Colors.red,
                  padding: EdgeInsets.all(7),
                  badgeContent: Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 32,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductviewPage(),
                    SizedBox(height: 20),
                    CategoriesWidget(),
                    SizedBox(height: 20),
                    ItemsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Badge extends StatelessWidget {
  final Color badgeColor;
  final EdgeInsets padding;
  final Widget badgeContent;
  final Widget child;

  const Badge({
    required this.badgeColor,
    required this.padding,
    required this.badgeContent,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: badgeColor,
              shape: BoxShape.circle,
            ),
            child: badgeContent,
          ),
        ),
      ],
    );
  }
}


