import 'package:flutter/material.dart';
import 'package:tenich/UI/Home/Login_Signup/home_page/categories.dart';
import 'package:tenich/UI/Home/coursel/home_carousel.dart';

class Home_act extends StatefulWidget {
  @override
  _Home_actState createState() => _Home_actState();
}

class _Home_actState extends State<Home_act> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
      child: Column(
        children: [
          Padding(
            //api advert images,promo,notifications
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              height: 150,
              child: Onboard_Carousel(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(child: Expanded(child: Row()))
        ],
      ),
    ));
  }
}
