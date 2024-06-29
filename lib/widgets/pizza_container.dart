import 'package:flutter/material.dart';
import 'package:food/Screens/italian_japan_sea_details.dart';
import 'package:food/utils/const.dart';

import '../Screens/food_details.dart';

class pizzacontainer extends StatelessWidget {
  pizzacontainer(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.calori,
      this.intexx});
  String name;
  String calori;
  double price;
  String image;
  int? intexx;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 170,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            maincolor,
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        // border: Border.all(
        //   color: CupertinoColors.inactiveGray,
        // ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 3,
          ),
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 0,
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
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          SizedBox(
            height: 135,
            width: 135,
            child: Image.asset(image),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  if (intexx == 0) {
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
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FooddetailsItaJapSea(
                          name: name,
                          calori: calori,
                          image: image,
                        ),
                      ),
                    );
                  }
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: maincolor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
