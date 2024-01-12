import 'package:e_commerce_app/data/widgets_data.dart';
import 'package:e_commerce_app/pages/top_main_page.dart';
import 'package:e_commerce_app/screens/details.dart';
import 'package:e_commerce_app/widgets/food_for_you.dart';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/widgets/categories.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          TopMainPage(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  'Food Category',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 120, top: 15),
                child: Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent),
                    ),
                    Icon(Icons.arrow_forward, color: Colors.deepOrangeAccent),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Categories(
                    itemIcon: 'assets/icons/burger.png', itemName: 'Burger'),
                Categories(
                    itemIcon: 'assets/icons/biryani.png', itemName: 'biryani'),
                Categories(itemIcon: 'assets/icons/cake.png', itemName: 'cake'),
                Categories(
                    itemIcon: 'assets/icons/ramen.png', itemName: 'ramen'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 220),
            child: Text('Food for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                                title: ChineseFood().title,
                                duration: ChineseFood().duration,
                                calories: ChineseFood().calories,
                                price: ChineseFood().price,
                                image: ChineseFood().image,
                                info: ChineseFood().info,
                                rating: ChineseFood().rating),
                          ));
                    },
                    child: FoodForYou(
                      title: ChineseFood().title,
                      duration: ChineseFood().duration,
                      calories: ChineseFood().calories,
                      price: ChineseFood().price,
                      image: ChineseFood().image,
                    )),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                              title: KoreanFood().title,
                              duration: KoreanFood().duration,
                              calories: KoreanFood().calories,
                              price: KoreanFood().price,
                              image: KoreanFood().image,
                              info: KoreanFood().info,
                              rating: KoreanFood().rating),
                        ));
                  },
                  child: FoodForYou(
                      title: KoreanFood().title,
                      duration: KoreanFood().duration,
                      calories: KoreanFood().calories,
                      price: KoreanFood().price,
                      image: KoreanFood().image),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                              title: TurkishFood().title,
                              duration: TurkishFood().duration,
                              calories: TurkishFood().calories,
                              price: TurkishFood().price,
                              image: TurkishFood().image,
                              info: TurkishFood().info,
                              rating: TurkishFood().rating),
                        ));
                  },
                  child: FoodForYou(
                      title: TurkishFood().title,
                      duration: TurkishFood().duration,
                      calories: TurkishFood().calories,
                      price: TurkishFood().price,
                      image: TurkishFood().image),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopify_sharp),
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage('assets/images/home.png'),
                height: 35,
              ),
              Image(
                image: AssetImage('assets/images/download.png'),
                height: 35,
              ),
              SizedBox(
                width: 20,
              ),
              Image(
                image: AssetImage('assets/images/shopping-cart-add.png'),
                height: 35,
              ),
              Image(
                image: AssetImage('assets/images/settings.png'),
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
