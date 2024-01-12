import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopMainPage extends StatelessWidget {
  const TopMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 260,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/main.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                    left: 20,
                  ),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // How far the shadow spreads
                            blurRadius: 4, // The intensity of the blur effect
                            offset: const Offset(
                                0, 2), // The position of the shadow
                          ),
                        ],
                        image: const DecorationImage(
                            image: AssetImage('assets/icons/man.png'))),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 60, right: 12),
                      child: Text(
                        'Hi mr.Hakim',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Let\'s grab your food!',
                      style:
                          TextStyle(fontSize: 15, color: Colors.grey.shade700),
                    ),
                  ],
                ),
                const SizedBox(width: 70),
                Padding(
                  padding: const EdgeInsets.only(top: 57),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white,
                      boxShadow: CupertinoContextMenu.kEndBoxShadow,
                    ),
                    child: const Badge(
                      alignment: AlignmentDirectional.topEnd,
                      label: Text(
                        '+9',
                      ),
                      child: Icon(
                        Icons.notifications_none_outlined,
                        size: 45,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for food',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.display_settings),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (value) {
                  // Handle search query changes here
                  // You can filter/search data based on the entered value
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
