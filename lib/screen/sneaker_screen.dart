import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/feature_product.dart';
import 'package:shoecommerce/screen/search_bar.dart';
import 'package:shoecommerce/screen/single_sneaker.dart';

class Sneaker extends StatelessWidget {
  @override
  List brands = [
    'Nike',
    'Adidas',
    'Puma',
    'Humel',
    'Reebok',
    'Birkenstock',
    'Dolce Vita',
    'Fireside',
    'Hurley',
    'Ladeda',
    'Madden Girl',
    'Rockport',
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              SingleSneaker(brands: brands),
              FeatureProduct(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomeScreen(),
                //   ),
                // ),
                child: Image.asset(
                  "assets/images/shoeicon.png",
                  height: 30,
                  width: double.infinity,
                  color: Colors.purple,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  'assets/images/bicon2.png',
                  height: 25,
                  // color: Colors.purple,
                ),
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
      ),
    );
  }
}
