import 'package:flutter/material.dart';

class FeatureProduct extends StatelessWidget {
  const FeatureProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/shoe-intro.jpg'),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Nike Series",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).accentColor),
                ),
                Text(
                  'JOYRIDE',
                  style: TextStyle(
                      fontSize: 45,
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).accentColor,
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.search, color: Theme.of(context).accentColor),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border,
                      color: Theme.of(context).accentColor),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
