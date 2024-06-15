// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:food/Screens/food_details.dart';
//
// class Radios extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<Radios> {
//   int _selectedValue = 0;
//   String rate = '';
//   String calory = '';
//   String time = '';
//   double prise8 = 6.44;
//   double prise12 = 9.47;
//   double prise16 = 15.32;
//
//   @override
//   void initState() {
//     calory = '40';
//     time = "20-25 min";
//     rate = "9.4";
//
//     answre.value = prise8;
//
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Radio<int>(
//                   value: 0,
//                   activeColor: Colors.red,
//                   groupValue: _selectedValue,
//                   onChanged: (int? value) {
//                     answre.value = prise8;
//                     setState(() {
//                       calory = '40';
//                       time = "20-25 min";
//                       rate = "9.4";
//                       _selectedValue = value!;
//                     });
//                   },
//                 ),
//                 Text(
//                   prise8.toString(),
//                   style: TextStyle(
//                       color: _selectedValue == 0
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//                 Text(
//                   '8 inch',
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: _selectedValue == 0
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 80,
//             ),
//             Column(
//               children: <Widget>[
//                 Radio<int>(
//                   value: 1,
//                   activeColor: Colors.red,
//                   groupValue: _selectedValue,
//                   onChanged: (int? value) {
//                     answre.value = prise12;
//                     setState(() {
//                       calory = '45';
//                       time = "20-30 min";
//                       rate = "4.9";
//                       _selectedValue = value!;
//                     });
//                   },
//                 ),
//                 Text(
//                   prise12.toString(),
//                   style: TextStyle(
//                       color: _selectedValue == 1
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//                 Text(
//                   '12 inch',
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: _selectedValue == 1
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 80,
//             ),
//             Column(
//               children: <Widget>[
//                 Radio<int>(
//                   value: 2,
//                   activeColor: Colors.red,
//                   groupValue: _selectedValue,
//                   onChanged: (int? value) {
//                     answre.value = prise16;
//                     setState(() {
//                       calory = '50';
//                       time = "10-20 min";
//                       rate = "4.3";
//                       _selectedValue = value!;
//                     });
//                   },
//                 ),
//                 Text(
//                   prise16.toString(),
//                   style: TextStyle(
//                       color: _selectedValue == 2
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//                 Text(
//                   '16 inch',
//                   style: TextStyle(
//                       fontSize: 18,
//                       color: _selectedValue == 2
//                           ? Colors.black
//                           : CupertinoColors.inactiveGray),
//                 ),
//               ],
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 40,
//         ),
//         Padding(
//           padding: EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               Image.asset('assets/images/Star.png'),
//               SizedBox(
//                 width: 3,
//               ),
//               Text(
//                 rate,
//                 style: TextStyle(fontSize: 17),
//               ),
//               SizedBox(
//                 width: 50,
//               ),
//               SizedBox(
//                 height: 20,
//                 width: 20,
//                 child: Image.asset(
//                   'assets/images/Emoji.png',
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               SizedBox(
//                 width: 3,
//               ),
//               Text(
//                 '$calory Callory',
//                 style: TextStyle(fontSize: 17),
//               ),
//               SizedBox(
//                 width: 50,
//               ),
//               Image.asset('assets/images/Time.png'),
//               SizedBox(
//                 width: 3,
//               ),
//               Text(
//                 time,
//                 style: TextStyle(fontSize: 17),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         SizedBox(
//           height: 40,
//           width: 200,
//           child: ElevatedButton(
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
//               onPressed: () {},
//               child: Text(
//                 'Add to cart',
//                 style: TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               )),
//         )
//       ],
//     );
//   }
// }
