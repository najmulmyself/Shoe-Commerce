import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/feature_product.dart';
import 'package:shoecommerce/screen/intro_image.dart';

import 'discover_product.dart';

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
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
