import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/service/service.dart';
import 'package:food/utils/const.dart';

class Fooddetails extends StatefulWidget {
  Fooddetails({
    super.key,
    required this.name,
    required this.image,
    required this.calori,
  });

  String name;
  String calori;
  String image;

  @override
  State<Fooddetails> createState() => _FooddetailsState();
}

class _FooddetailsState extends State<Fooddetails> {
  int start = 1;
  double result = 0;
  double prize = 20;

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
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                  height: 30,
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
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Radio<int>(
                              value: 0,
                              activeColor: maincolor,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  fixedprise = prise8;
                                  result = prise8;
                                  calory = '40';
                                  time = "20-25 min";
                                  rate = "9.4";
                                  _selectedValue = value!;
                                });
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                if (!states.contains(WidgetState.selected)) {
                                  return Colors.white;
                                }
                                return maincolor; // Active color
                              }),
                            ),
                            Text(
                              prise8.toString(),
                              style: TextStyle(
                                  fontWeight: _selectedValue == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 0 ? 18 : 15,
                                  color: _selectedValue == 0
                                      ? Colors.white
                                      : Colors.white),
                            ),
                            Text(
                              '8 inch',
                              style: TextStyle(
                                  fontWeight: _selectedValue == 0
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 0 ? 18 : 15,
                                  color: _selectedValue == 0
                                      ? Colors.white
                                      : Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Column(
                          children: <Widget>[
                            Radio<int>(
                              value: 1,
                              activeColor: maincolor,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  fixedprise = prise12;
                                  result = prise12;
                                  calory = '45';
                                  time = "20-30 min";
                                  rate = "4.9";
                                  _selectedValue = value!;
                                });
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                if (!states.contains(WidgetState.selected)) {
                                  return Colors.white;
                                }
                                return maincolor; // Active color
                              }),
                            ),
                            Text(
                              prise12.toString(),
                              style: TextStyle(
                                  fontWeight: _selectedValue == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 1 ? 18 : 15,
                                  color: _selectedValue == 1
                                      ? Colors.white
                                      : Colors.white),
                            ),
                            Text(
                              '12 inch',
                              style: TextStyle(
                                  fontWeight: _selectedValue == 1
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 1 ? 18 : 15,
                                  color: _selectedValue == 1
                                      ? Colors.white
                                      : Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Column(
                          children: <Widget>[
                            Radio<int>(
                              value: 2,
                              activeColor: maincolor,
                              groupValue: _selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  fixedprise = prise16;
                                  result = prise16;
                                  calory = '50';
                                  time = "10-20 min";
                                  rate = "4.3";
                                  _selectedValue = value!;
                                });
                              },
                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                  (Set<WidgetState> states) {
                                if (!states.contains(WidgetState.selected)) {
                                  return Colors.white;
                                }
                                return maincolor; // Active color
                              }),
                            ),
                            Text(
                              prise16.toString(),
                              style: TextStyle(
                                  fontWeight: _selectedValue == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 2 ? 18 : 15,
                                  color: _selectedValue == 2
                                      ? Colors.white
                                      : Colors.white),
                            ),
                            Text(
                              '16 inch',
                              style: TextStyle(
                                  fontWeight: _selectedValue == 2
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _selectedValue == 2 ? 18 : 15,
                                  color: _selectedValue == 2
                                      ? Colors.white
                                      : Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
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
      ),
    );
  }
}
