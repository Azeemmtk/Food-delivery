import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/food_details.dart';

import 'add_button.dart';

class pizzacontainer extends StatelessWidget {
  pizzacontainer(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.calori});
  String name;
  String calori;
  double price;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: CupertinoColors.inactiveGray,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  'assets/images/Emoji.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$calori calories',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFEB5757),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Image.asset(image),
          SizedBox(
            height: 5,
          ),
          addbotton(
            icons: Icon(
              CupertinoIcons.add,
              color: Colors.white,
            ),
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Fooddetails(
                    name: name,
                    calori: calori,
                    image: image,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
