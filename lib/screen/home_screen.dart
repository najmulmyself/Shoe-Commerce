import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/feature_product.dart';
import 'package:shoecommerce/screen/intro_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.0,
                  ),
                  child: Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
