import 'package:flutter/material.dart';

class DiscoverProduct extends StatelessWidget {
  const DiscoverProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          child: ListView.builder(
            itemBuilder: (c, i) {
              return Container(
                height: 40,
                width: 40,
                color: Colors.red,
              );
            },
            itemCount: 20,
          ),
        )
      ],
    );
  }
}
