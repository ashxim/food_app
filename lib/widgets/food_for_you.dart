import 'package:flutter/material.dart';

class FoodForYou extends StatelessWidget {
  const FoodForYou(
      {super.key,
      required this.title,
      required this.duration,
      required this.calories,
      required this.price,
      required this.image});
  final String image;
  final String title;
  final String duration;
  final String calories;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.grey.shade100),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Image.asset(
              image,
              height: 150,
              width: 200,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              )),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.timelapse,
                color: Colors.grey.shade500,
              ),
              Text(duration,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  )),
              Text('|',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                  )),
              Text(
                calories,
                style: TextStyle(
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(price,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 25,
              ),
              FloatingActionButton(
                mini: true,
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
                backgroundColor: Colors.deepOrangeAccent,
              )
            ],
          ),
        ],
      ),
    );
  }
}
