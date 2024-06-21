import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/sign%20in%20screen.dart';
import 'package:food/utils/const.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _Screen1State();
}

class _Screen1State extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  maincolor,
                  Colors.black,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: Image.asset('assets/images/delivery-man 2.png'),
          ),
          Positioned(
            top: 500,
            left: 10,
            child: Image.asset('assets/images/Rectangle 1.png'),
          ),
          Positioned(
            top: 530,
            left: 60,
            child: Text(
              'Quick Delivery at ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Positioned(
            top: 570,
            left: 80,
            child: Text(
              'Your ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Positioned(
            top: 570,
            left: 170,
            child: Text(
              'Doorstep',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: maincolor, fontSize: 35),
            ),
          ),
          Positioned(
            top: 610,
            left: 60,
            child: Text(
              'Home delivery and onlione reservation \n     system for retaurants and cafe',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.inactiveGray,
                  fontSize: 15),
            ),
          ),
          Positioned(
              top: 680,
              left: 70,
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: maincolor),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signin()));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
