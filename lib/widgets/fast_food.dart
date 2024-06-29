import 'package:flutter/material.dart';
import 'package:food/widgets/pizza_container.dart';

class Fastfoods extends StatefulWidget {
  Fastfoods({super.key, this.intex});

  int? intex;
  @override
  State<Fastfoods> createState() => _FastfoodsState();
}

class _FastfoodsState extends State<Fastfoods> {
  List<Map> popularItems = [
    {
      'name': 'Melting cheese',
      'image': 'assets/images/Pizza 4.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Pizza capricciosa',
      'image': 'assets/images/Pizza 3.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Melting cheese',
      'image': 'assets/images/Pizza 4.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Pizza capricciosa',
      'image': 'assets/images/Pizza 3.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Melting cheese',
      'image': 'assets/images/Pizza 4.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Pizza capricciosa',
      'image': 'assets/images/Pizza 3.png',
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
          childAspectRatio: 0.7621, // Adjust aspect ratio as needed
        ),
        itemCount: popularItems.length,
        itemBuilder: (context, index) {
          return pizzacontainer(
            intexx: widget.intex,
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
