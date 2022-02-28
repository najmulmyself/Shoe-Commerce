import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/home_screen.dart';
import 'package:shoecommerce/screen/test_s.dart';

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
      home: TestS(),
    );
  }
}
