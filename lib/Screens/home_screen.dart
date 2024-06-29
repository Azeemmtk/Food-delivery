import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/Screens/cart_screen.dart';
import 'package:food/Screens/help_screen.dart';
import 'package:food/Screens/profile.dart';
import 'package:food/widgets/fast_food.dart';
import 'package:food/widgets/italian_food.dart';
import 'package:food/widgets/japanese_food.dart';
import 'package:food/widgets/sea_food.dart';

import '../utils/const.dart';
import '../widgets/container1.dart';

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
      backgroundColor: Colors.white,
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          SizedBox(
            height: 110,
            child: DrawerHeader(
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
              color: maincolor,
            ),
            title: Text('Home', style: TextStyle(color: maincolor)),
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
              color: maincolor,
            ),
            title: Text(
              'Cart',
              style: TextStyle(
                color: maincolor,
              ),
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
            leading: const Icon(
              CupertinoIcons.profile_circled,
              color: Color(0xFF7298c4),
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Color(0xFF7298c4),
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(),
                  ));
            },
            leading: const Icon(
              Icons.contact_support,
              color: Color(0xFF7298c4),
            ),
            title: const Text(
              'Contact',
              style: TextStyle(
                color: Color(0xFF7298c4),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.feedback,
              color: Color(0xFF7298c4),
            ),
            title: const Text(
              'Feedback',
              style: TextStyle(
                color: Color(0xFF7298c4),
              ),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Azeem',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Find your Delicious Food',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
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
                              name: imglist[3]['text']),
                        ),
                      ]),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: TabBarView(controller: tabcontrol, children: [
                          Fastfoods(intex: selectedIndux),
                          Italianfoods(),
                          Japanesefoods(),
                          Seafoods(),
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
