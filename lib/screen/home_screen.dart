import 'package:flutter/material.dart';
import 'package:shoecommerce/screen/feature_image.dart';

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
            FeatureProduct(),
            // SizedBox(
            //   height: 40,
            // ),
            Container(
              height: 200,
              width: double.infinity,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text("Featured")),
                  Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(children: [
                                  Container(
                                    height: 80,
                                    width: 40,
                                    color: Colors.black,
                                  ),
                                ]),
                              );
                            }),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
