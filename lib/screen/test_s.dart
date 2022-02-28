import 'package:flutter/material.dart';

import 'home_screen.dart';

class TestS extends StatelessWidget {
  const TestS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
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
