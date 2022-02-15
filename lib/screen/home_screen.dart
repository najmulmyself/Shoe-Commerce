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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text("Featured")),
                Container(
                  child: Row(children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: Expanded(
                        child: ListView.builder(
                          itemBuilder: (con, index) {
                            return Icon(Icons.abc);
                          },
                          itemCount: 6,
                        ),
                      ),
                    )
                  ]),
                ),
                // Row(
                //   children: [
                //     Row(
                //       children: [
                //         ListView.builder(
                //             itemCount: 6,
                //             itemBuilder: (context, index) {
                //               return Padding(
                //                 padding: const EdgeInsets.all(8.0),
                //                 child: Container(
                //                   height: 80,
                //                   width: 70,
                //                   color: Colors.black,
                //                 ),
                //               );
                //             }),
                //       ],
                //     ),
                //   ],
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
