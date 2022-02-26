import 'package:flutter/material.dart';

class FeatureProduct extends StatelessWidget {
  const FeatureProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            left: 18.0,
          ),
          child: Text(
            "Featured",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 180,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 26,
              itemBuilder: (c, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    bottom: 5,
                  ),
                  child: Container(
                    // color: Colors.red,
                    // height: 120, // we specified before
                    width: 160,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          height: 170,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10),
                            ],
                            color: Colors.white,
                          ),
                        ),
                        const Image(
                          image: AssetImage('assets/images/shoe1.png'),
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: 8.0, right: 17),
                            child: Text(
                              '\$ 109.99',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
