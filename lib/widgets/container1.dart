import 'package:flutter/material.dart';

class Contaner1 extends StatefulWidget {
  Contaner1(
      {super.key,
      required this.image,
      required this.name,
      required this.isClicked});

  String image;
  String name;
  bool isClicked;

  @override
  State<Contaner1> createState() => _Contaner1State();
}

class _Contaner1State extends State<Contaner1> {
  @override
  Widget build(BuildContext context) {
    return widget.isClicked
        ? Column(
            children: [
              Container(
                child: Image.asset(widget.image),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink, width: 4),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 15,
              ),
              Text(widget.name),
            ],
          )
        : Column(
            children: [
              Container(
                child: Image.asset(widget.image),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(widget.name),
            ],
          );
  }
}
