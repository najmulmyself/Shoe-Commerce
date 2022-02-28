import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/search_bar.dart';

class Sneaker extends StatelessWidget {
  const Sneaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.red,
        body: Column(
          children: [
            SearchBar(),
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
