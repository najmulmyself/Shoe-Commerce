import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
