import 'package:flutter/material.dart';
import 'package:tenich/UI/Home/coursel/home_carousel.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.8,
      color: Colors.white,
      child: Center(
          child: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Onboard_Carousel(),
          ),
          Container(
            height: 70,
            width: 100,
            color: Colors.red,
          )
        ],
      )),
    );
  }
}
