import 'package:flutter/material.dart';

class addbotton extends StatelessWidget {
  addbotton({super.key, required this.ontap, required this.icons});

  Widget icons;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(
              'assets/images/Rectangle 5.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: -8,
              left: -4,
              child: IconButton(onPressed: ontap, icon: icons))
        ],
      ),
    );
  }
}
