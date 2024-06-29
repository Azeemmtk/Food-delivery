import 'package:flutter/material.dart';
import 'package:food/widgets/pizza_container.dart';

class Italianfoods extends StatefulWidget {
  const Italianfoods({super.key});

  @override
  State<Italianfoods> createState() => _FastfoodsState();
}

class _FastfoodsState extends State<Italianfoods> {
  List<Map> popularItems = [
    {
      'name': 'Mushroom Risotto',
      'image': 'assets/images/Gourmet Mushroom Risotto.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Fried Risotto',
      'image': 'assets/images/Italian Fried Risotto.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Lasagna',
      'image': 'assets/images/Lasagna.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Osso Buco',
      'image': 'assets/images/Osso Buco.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Tomato Pesto',
      'image': 'assets/images/Sicilian Tomato Pesto.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Risottati Vongole',
      'image': 'assets/images/Spaghetti Risottati alle Vongole.png',
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
          childAspectRatio: 0.73, // Adjust aspect ratio as needed
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
