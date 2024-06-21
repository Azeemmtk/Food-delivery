import 'package:flutter/material.dart';

import '../utils/const.dart';
import '../widgets/contact details.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
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
        title: Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Text(
              "Customer Service",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: "Airbnb",
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ContactDetail(
                  icon: Icons.phone,
                  title: 'Phone',
                  detail: '+91 986362737',
                ),
                Divider(),
                ContactDetail(
                  icon: Icons.email,
                  title: 'Email',
                  detail: 'groc@example.com',
                ),
                Divider(),
                ContactDetail(
                  icon: Icons.location_on,
                  title: 'Address',
                  detail: '123 MAll, Calicut, India',
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        maxLines: 6,
                        decoration: InputDecoration(
                            labelText: 'Type here a message.........',
                            labelStyle: TextStyle(color: maincolor),
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: maincolor))),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: maincolor),
                          onPressed: () {
                            // Handle the message, e.g., print it or send it to a server
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
