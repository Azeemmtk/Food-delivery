import 'package:flutter/cupertino.dart';

SingleChildScrollView(
child: Container(
width: 310, // Adjust width as per your design
padding: EdgeInsets.all(8.0),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8.0),
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
_expanded
? Text(
text,
textAlign: TextAlign.justify,
style: TextStyle(
fontSize: 15.0,
color: Colors.grey,
),
)
    : Text(
text,
textAlign: TextAlign.justify,
maxLines: 3,
overflow: TextOverflow.ellipsis,
style:
TextStyle(fontSize: 15.0, color: Colors.grey),
),
SizedBox(height: 8),
GestureDetector(
onTap: _toggleReadMore,
child: Text(
_expanded ? 'Read Less' : 'Read More',
textAlign: TextAlign.justify,
style: TextStyle(
color: Colors.blue,
fontWeight: FontWeight.bold,
),
),
),
],
),
),
),