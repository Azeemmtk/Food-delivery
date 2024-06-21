import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/service/service.dart';
import 'package:food/utils/const.dart';

double subtotal() {
  double sum = 0;
  for (int i = 0; i < Data.length; i++) {
    sum = sum + Data[i]['Amount'];
  }
  return sum;
}

class Cart extends StatefulWidget {
  Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
        title: const Row(
          children: [
            SizedBox(
              width: 80,
            ),
            Text(
              'Cart',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            child: ListView.builder(
              itemCount: Data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            // color: Color(0xFFf87d7c).withOpacity(.1),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: CupertinoColors.inactiveGray)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                Data[index]['image'],
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      Data[index]['Name'],
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Image.asset('assets/images/Star.png'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      Data[index]['Rating'],
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Qty :',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      Data[index]['qty'].toString(),
                                      style: const TextStyle(fontSize: 17),
                                    ),
                                    const SizedBox(
                                      width: 60,
                                    ),
                                    Text(
                                      Data[index]['Pyment_method'],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 0,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      '\$ :',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      Data[index]['Amount'].toStringAsFixed(2),
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    const SizedBox(
                                      width: 85,
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          deletedata(indux: index);
                                        });
                                      },
                                      icon: const SizedBox(
                                        child: Icon(
                                          Icons.delete,
                                          color: Color(0xFF7298c4),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 0,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const SizedBox(
                                        child: Icon(
                                          Icons.add_circle,
                                          color: Color(0xFF7298c4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Container(
            height: 213.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: CupertinoColors.inactiveGray.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Sub Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        width: 180,
                      ),
                      const Text(
                        "\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text(
                        subtotal().toStringAsFixed(1),
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF7298c4),
                      ),
                      child: const Text(
                        'Check out',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: maincolor,
                        ),
                        child: const Text(
                          'Place Order',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
