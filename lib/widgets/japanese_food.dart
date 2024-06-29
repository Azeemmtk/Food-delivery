import 'package:flutter/material.dart';
import 'package:food/widgets/pizza_container.dart';

class Japanesefoods extends StatefulWidget {
  const Japanesefoods({super.key});

  @override
  State<Japanesefoods> createState() => _FastfoodsState();
}

class _FastfoodsState extends State<Japanesefoods> {
  List<Map> popularItems = [
    {
      'name': 'Champon',
      'image': 'assets/images/Champon.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Kashi Pan',
      'image': 'assets/images/Kashi Pan.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Natto',
      'image': 'assets/images/Natto.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Sashimi',
      'image': 'assets/images/Sashimi.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Sushii',
      'image': 'assets/images/Sushii.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Udon',
      'image': 'assets/images/Udon.png',
      'price': 12.47,
      'calori': '55'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.762, // Adjust aspect ratio as needed
        ),
        itemCount: popularItems.length,
        itemBuilder: (context, index) {
          return pizzacontainer(
            name: popularItems[index]['name'],
            image: popularItems[index]['image'],
            price: popularItems[index]['price'],
            calori: popularItems[index]['calori'],
          );
        },
      ),
    );
  }
}
