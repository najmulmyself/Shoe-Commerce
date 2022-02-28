import 'package:flutter/material.dart';

class DiscoverProduct extends StatelessWidget {
  const DiscoverProduct({
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
            "Discover",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 140,
          width: double.infinity,
          color: Colors.grey,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 240,
                  color: Colors.red,
                ),
              );
            },
            itemCount: 20,
          ),
        )
      ],
    );
  }
}
