import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/cart_screen.dart';
import 'package:food/Screens/profile.dart';

import '../widgets/container1.dart';
import '../widgets/pizza_container.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> imglist = [
    {'img': "assets/images/Hamburger.png", 'text': 'Fast Food'},
    {'img': "assets/images/Pizza.png", 'text': "Italian"},
    {'img': "assets/images/Sushi.png", 'text': "Japanese"},
    {'img': "assets/images/Scorpion.png", "text": "Sea food"},
  ];

  List<Map> popularItems = [
    {
      'name': 'Melting cheese',
      'image': 'assets/images/Pizza 4.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Pizza capricciosa',
      'image': 'assets/images/Pizza 3.png',
      'price': 12.47,
      'calori': '55'
    },
    {
      'name': 'Melting cheese',
      'image': 'assets/images/Pizza 4.png',
      'price': 9.47,
      'calori': '44'
    },
    {
      'name': 'Pizza capricciosa',
      'image': 'assets/images/Pizza 3.png',
      'price': 12.47,
      'calori': '55'
    },
  ];

  int selectedIndux = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 110,
            child: DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFf87d7c)),
              child: Text(
                'Menu',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            leading: Icon(
              Icons.home_filled,
              color: Color(0xFFf87d7c),
            ),
            title: Text('Home', style: TextStyle(color: Color(0xFFf87d7c))),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ));
            },
            leading: Icon(
              CupertinoIcons.cart,
              color: Color(0xFFf87d7c),
            ),
            title: Text(
              'Cart',
              style: TextStyle(color: Color(0xFFf87d7c)),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ));
            },
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Color(0xFFf87d7c),
            ),
            title: Text(
              'Profile',
              style: TextStyle(color: Color(0xFFf87d7c)),
            ),
          ),
        ],
      )),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Stack(
            children: [
              Image.asset('assets/images/Ellipse 1.png'),
              Positioned(
                top: 1,
                left: 5,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi Azeem',
                  style: TextStyle(fontSize: 20, color: Color(0xFFEB5757))),
              SizedBox(height: 8),
              Text('Find your Delicious Food',
                  style: TextStyle(
                    fontSize: 24,
                  )),
              SizedBox(height: 20),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 110,
                      child: ListView.builder(
                        // physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: imglist.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  selectedIndux = index;
                                  setState(() {});
                                },
                                child: Row(
                                  children: [
                                    Contaner1(
                                        isClicked: selectedIndux == index,
                                        image: imglist[index]['img'],
                                        name: imglist[index]['text']),
                                    SizedBox(
                                      width: 25,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio:
                              0.63, // Adjust aspect ratio as needed
                        ),
                        itemCount: popularItems.length,
                        itemBuilder: (context, index) {
                          return pizzacontainer(
                            name: popularItems[index]['name'],
                            image: popularItems[index]['image'],
                            price: popularItems[index]['price'],
                            calori: popularItems[index]['calori'],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // floatingActionButton: Container(
      //   height: 70,
      //   width: 70,
      //   decoration: BoxDecoration(
      //     shape: BoxShape.circle,
      //     color: Colors.red,
      //   ),
      //   child: Align(
      //     alignment: Alignment.center,
      //     child: Text(
      //       'Menu',
      //       style: TextStyle(
      //           color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      //     ),
      //   ),
      // ),
    );
  }
}
