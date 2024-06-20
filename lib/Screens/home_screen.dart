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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
  late TabController tabcontrol;
  @override
  void initState() {
    tabcontrol = TabController(
      length: 4,
      vsync: this,
    );
    tabcontrol.addListener(() {
      setState(() {
        selectedIndux = tabcontrol.index;
      });
    });

    super.initState();
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
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
              DefaultTabController(
                length: imglist.length,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TabBar(controller: tabcontrol, tabs: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tabcontrol.index = 0;
                              selectedIndux = 0;
                            });
                          },
                          child: Contaner1(
                              isClicked: selectedIndux == 0,
                              image: imglist[0]['img'],
                              name: imglist[0]['text']),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tabcontrol.index = 1;
                              selectedIndux = 1;
                            });
                          },
                          child: Contaner1(
                              isClicked: selectedIndux == 1,
                              image: imglist[1]['img'],
                              name: imglist[1]['text']),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tabcontrol.index = 2;
                              selectedIndux = 2;
                            });
                          },
                          child: Contaner1(
                              isClicked: selectedIndux == 2,
                              image: imglist[2]['img'],
                              name: imglist[2]['text']),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tabcontrol.index = 3;
                              selectedIndux = 3;
                            });
                          },
                          child: Contaner1(
                              isClicked: selectedIndux == 3,
                              image: imglist[3]['img'],
                              name: imglist[2]['text']),
                        ),
                      ]),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: TabBarView(controller: tabcontrol, children: [
                          Container(
                            child: GridView.builder(
                              // scrollDirection: Axis.vertical,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                          Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                          Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                          Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                        ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
