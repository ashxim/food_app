import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    required this.itemIcon,
    required this.itemName,
    super.key,
  });
  final String itemName;
  final String itemIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey.shade200),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  child: Image(
                height: 40,
                width: 50,
                image: AssetImage(
                  itemIcon,
                ),
              )),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          itemName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

    // Add more items here as needed
  }
}
