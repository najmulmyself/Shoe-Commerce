import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/sneaker_screen.dart';
import 'package:shoecommerce/screen/feature_product.dart';
import 'package:shoecommerce/screen/intro_image.dart';
import 'package:shoecommerce/screen/sneaker_screen.dart';

import 'discover_product.dart';
// import 'sneaker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              IntroProduct(),
              SizedBox(
                height: 15,
              ),
              FeatureProduct(),
              SizedBox(
                height: 15,
              ),
              DiscoverProduct(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Sneaker(),
                ),
              ),
              child: Image.asset(
                "assets/images/shoeicon.png",
                height: 30,
                width: double.infinity,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/bicon2.png',
              height: 25,
              color: Colors.purple,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/user.png',
              height: 25,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
