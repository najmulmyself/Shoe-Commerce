import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.notes_rounded),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.withOpacity(0.2),
            ),
            width: 300,
            child: TextField(
              showCursor: false,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
            ),
          ),
          Icon(Icons.add_shopping_cart)
        ],
      ),
    );
  }
}
