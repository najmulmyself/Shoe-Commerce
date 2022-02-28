import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/search_bar.dart';

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
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, top: 18, bottom: 12),
                  child: Text(
                    'Sneakers',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(
                              brands[index],
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: brands.length,
                  ),
                )
              ],
            ),
          ],
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
