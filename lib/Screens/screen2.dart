import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    {'img': "assets/images/Sushi.png", 'text': "Japanees"},
    {'img': "assets/images/Scorpion.png", "text": "Sea food"},
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
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imglist.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
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
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pizzacontainer(
                      name: 'Melting cheese',
                      image: 'assets/images/Pizza 4.png',
                      price: 9.47,
                      calori: '44'),
                  pizzacontainer(
                    image: 'assets/images/Pizza 3.png',
                    name: 'Pizza capricciosa',
                    price: 12.47,
                    calori: '55',
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pizzacontainer(
                      name: 'Melting cheese',
                      image: 'assets/images/Pizza 4.png',
                      price: 9.47,
                      calori: '44'),
                  pizzacontainer(
                    image: 'assets/images/Pizza 3.png',
                    name: 'Pizza capricciosa',
                    price: 12.47,
                    calori: '55',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Menu',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
