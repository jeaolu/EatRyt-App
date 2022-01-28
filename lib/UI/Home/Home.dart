import 'package:flutter/material.dart';
import 'package:tenich/UI/Home/Login_Signup/home_page/categories.dart';
import 'package:tenich/UI/Home/activities.dart';
import 'package:tenich/UI/Home/coursel/home_carousel.dart';
import 'package:tenich/UI/Home/home_na.dart';
import 'package:tenich/UI/Home/notification.dart';
import 'package:tenich/UI/Home/search.dart';
import 'package:tenich/UI/Home/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  bool isGreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _index == 0
              ? Home_act()
              : (_index == 1
                  ? Search()
                  : _index == 2
                      ? Notifications()
                      : Settings()),
          Padding(
            padding: EdgeInsets.only(
                top: 10,
                left: 18,
                bottom: MediaQuery.of(context).padding.bottom),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _index == 0 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: _index == 0 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(_index == 0 ? 'Home' : '',
                                style: TextStyle(
                                    color: _index == 0
                                        ? Colors.white
                                        : Colors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _index == 1 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: _index == 1 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(_index == 1 ? 'Favourites' : '',
                                style: TextStyle(
                                    color: _index == 1
                                        ? Colors.white
                                        : Colors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _index == 2 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: _index == 2 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(_index == 2 ? 'Account' : '',
                                style: TextStyle(
                                    color: _index == 2
                                        ? Colors.white
                                        : Colors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _index = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _index == 3 ? Colors.red : Colors.transparent,
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: _index == 3 ? Colors.white : Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Text(_index == 3 ? 'Settings' : '',
                                style: TextStyle(
                                    color: _index == 3
                                        ? Colors.white
                                        : Colors.black)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


 

// ont//

/*
   Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: Onboard_Carousel(),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFD13636),
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFFD13636),
                      ),
                    ),
                  ),
                ),
                Categories(),
                Padding(
                  padding: EdgeInsets.only(
                      top: 10,
                      left: 18,
                      right: 18,
                      bottom: MediaQuery.of(context).padding.bottom / 4),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _index = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _index == 0 ? Colors.red : Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color:
                                      _index == 0 ? Colors.white : Colors.black,
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        color: _index == 0
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

/*
 

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SingleChildScrollView(child: Activities()),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(MediaQuery.of(context).size.width, 80),
                        painter: BNBCustomPainter(),
                      ),
                      Center(
                        heightFactor: 0.6,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.green,
                          child: Icon(Icons.shopping_cart),
                          elevation: 0.1,
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(
                                    () => isGreen = !isGreen,
                                  );
                                },
                                icon: Icon(Icons.home,
                                    color:
                                        isGreen ? Colors.white : Colors.black),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.bookmark),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.2,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.notifications_active)),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.person),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xFFD13636)
      ..style = PaintingStyle.fill;
    Path path = (Path()..moveTo(0, 20));
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(10), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}




*/



*/