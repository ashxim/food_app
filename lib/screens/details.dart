import 'package:e_commerce_app/data/widgets_data.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(
      {super.key,
      required this.title,
      required this.duration,
      required this.calories,
      required this.price,
      required this.image,
      required this.info,
      required this.rating});
  final String title;
  final String duration;
  final String calories;
  final String price;
  final String image;
  final String info;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        body: Column(children: [
          Container(
            height: 300,
            width: 380,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Text(title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.timelapse,
                color: Colors.lightGreen,
              ),
              Text(
                duration,
              ),
              Text('|'),
              Image.asset(
                'assets/icons/flame.png',
                height: 18,
                color: Colors.deepOrangeAccent,
              ),
              Text(calories),
              Text('|'),
              Icon(
                Icons.star_border_outlined,
                color: Colors.amber,
              ),
              Text(rating),
            ],
          ),
          Divider(
            thickness: 3,
            height: 50,
            indent: 20,
            endIndent: 20,
          ),
          Row(
            children: [
              SizedBox(width: 20),
              Text(
                price,
                style: TextStyle(fontSize: 40, color: Colors.deepOrangeAccent),
              ),
              SizedBox(
                width: 118,
              ),
              Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(100), right: Radius.circular(100)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 2,
                        right: 20,
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey.shade200,
                        child: IconButton(
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: Icon(
                            Icons.minimize,
                          ),
                        ),
                      ),
                    ),
                    Text('1', style: TextStyle(fontSize: 25)),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.deepOrangeAccent,
                      child: IconButton(
                        color: Colors.amber,
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            thickness: 3,
            height: 50,
            indent: 20,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 220,
            ),
            child: Text(
              'about food',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18, bottom: 20),
                child: SingleChildScrollView(
                  child: Text(info,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.5,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 52, top: 150),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add to order  ' + ChineseFood().price),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 15),

                      primary: const Color.fromARGB(
                          255, 41, 41, 41), // Background color of the button
                    )),
              ),
            ],
          ),
        ]));
  }
}
