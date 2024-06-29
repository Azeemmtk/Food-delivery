import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/service/service.dart';
import 'package:food/utils/const.dart';

class FooddetailsItaJapSea extends StatefulWidget {
  FooddetailsItaJapSea({
    super.key,
    required this.name,
    required this.image,
    required this.calori,
  });

  String name;
  String calori;
  String image;

  @override
  State<FooddetailsItaJapSea> createState() => _FooddetailsState();
}

class _FooddetailsState extends State<FooddetailsItaJapSea> {
  int start = 1;
  double result = 0;
  double prize = 20;

  bool _expanded = false;
  @override
  void initState() {
    calory = '40';
    time = "20-25 min";
    rate = "9.4";

    result = fixedprise;
    // TODO: implement initState
    super.initState();
  }

  int _selectedValue = 0;
  String rate = '';
  String calory = '';
  String time = '';
  double prise8 = 6.44;
  double prise12 = 9.47;
  double prise16 = 15.32;
  double fixedprise = 6.64;

  String text =
      'Resource allocation in Internet of Vehicles (IoV) edge computing is currently a research hotspot. Existing studiesfocus on social welfare or revenue maximization. However, there is little research on lowest revenue guarantees,which is a problem of great concern to resource providers. This paper presents the innovative concept of the lowest revenue limit, which enables service providers to preset the revenue B and calculate whether the preset revenue';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaycolor,
      appBar: AppBar(
        backgroundColor: secondaycolor,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart))
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 250,
          width: 250,
          child: Image.asset(
            widget.image,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          widget.name,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 463.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
            gradient: LinearGradient(
              colors: [
                maincolor,
                Colors.black,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      start = start - 1;
                      result = fixedprise * start;
                      setState(() {});
                    },
                    icon: Icon(
                      CupertinoIcons.minus_square_fill,
                      color: maincolor,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    start.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {
                        start = start + 1;
                        result = fixedprise * start;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.add_box,
                        size: 40,
                        color: maincolor,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$${result.toStringAsFixed(2)}',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "About Food",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: secondaycolor),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    'Resource allocation in Internet of Vehicles (IoV) edge computing is currently a research hotspot. Existing studiesfocus on social welfare or revenue maximization. However, there is little research on lowest revenue guarantees,which is a problem of great concern to resource providers. This paper presents the innovative concept of the lowest revenue limit, which enables service providers to preset the revenue B and calculate whether the preset revenue',
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.white),
                    maxLines: 5,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/Star.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          rate,
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(
                          width: 46,
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            'assets/images/Emoji.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '$calory Callory',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                        SizedBox(
                          width: 46,
                        ),
                        Image.asset('assets/images/Time.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          time,
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: maincolor),
                        onPressed: () {
                          adddata(
                              image: widget.image,
                              name: widget.name,
                              qty: start,
                              rate: rate,
                              pmethod: 'Cash on delivery',
                              amount: result);
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
