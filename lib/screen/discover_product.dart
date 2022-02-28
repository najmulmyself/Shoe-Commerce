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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (c, i) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 240,
                  decoration: BoxDecoration(
                    // color: Color.fromRGBO(0, 0, 1, .4),
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/shoe2.jpg'),
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.6), BlendMode.dstATop),
                      fit: BoxFit.cover,
                    ),
                  ),
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
