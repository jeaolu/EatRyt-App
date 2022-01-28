import 'package:flutter/material.dart';
import 'package:tenich/UI/Home/Home.dart';
import 'package:tenich/UI/Home/Login_Signup/Login_Signup.dart';

class Wrap_route extends StatefulWidget {
  Wrap_route({Key? key}) : super(key: key);

  @override
  _Wrap_routeState createState() => _Wrap_routeState();
}

class _Wrap_routeState extends State<Wrap_route> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/Login_Signup_Screen',
      routes: {
        '/Login_Signup_Screen': (context) => Login_Signup_Screen(),
        '/Home_Screen': (context) => Home(),
      },
    );
  }
}
