import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/service/service.dart';
import 'package:food/widgets/add_button.dart';

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
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.heart))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '\$${widget.calori} calories',
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFEB5757),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              width: 250,
              child: Image.asset(
                widget.image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                addbotton(
                  ontap: () {
                    start = start - 1;
                    result = fixedprise * start;
                    setState(() {});
                  },
                  icons: Icon(
                    CupertinoIcons.minus,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  start.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 5,
                ),
                addbotton(
                    ontap: () {
                      start = start + 1;
                      result = fixedprise * start;
                      ;
                      setState(() {});
                    },
                    icons: Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${result}',
              style:
                  TextStyle(color: CupertinoColors.inactiveGray, fontSize: 15),
            ),
            SizedBox(
              height: 40,
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
                          activeColor: Colors.red,
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
                        ),
                        Text(
                          prise8.toString(),
                          style: TextStyle(
                              color: _selectedValue == 0
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
                        ),
                        Text(
                          '8 inch',
                          style: TextStyle(
                              fontSize: 18,
                              color: _selectedValue == 0
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
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
                          activeColor: Colors.red,
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
                        ),
                        Text(
                          prise12.toString(),
                          style: TextStyle(
                              color: _selectedValue == 1
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
                        ),
                        Text(
                          '12 inch',
                          style: TextStyle(
                              fontSize: 18,
                              color: _selectedValue == 1
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
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
                          activeColor: Colors.red,
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
                        ),
                        Text(
                          prise16.toString(),
                          style: TextStyle(
                              color: _selectedValue == 2
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
                        ),
                        Text(
                          '16 inch',
                          style: TextStyle(
                              fontSize: 18,
                              color: _selectedValue == 2
                                  ? Colors.black
                                  : CupertinoColors.inactiveGray),
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
                        width: 3,
                      ),
                      Text(
                        rate,
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 50,
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
                        width: 3,
                      ),
                      Text(
                        '$calory Callory',
                        style: TextStyle(fontSize: 17),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Image.asset('assets/images/Time.png'),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        time,
                        style: TextStyle(fontSize: 17),
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
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.red),
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
      ),
    );
  }
}
