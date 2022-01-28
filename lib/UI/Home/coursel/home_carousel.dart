import 'package:flutter/material.dart';
import 'carousel.dart';

// import 'package:sajilo_dokan/package/carousel.dart';
class Onboard_Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.85,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Carousel(
            overlayShadow: false,
            borderRadius: true,
            boxFit: BoxFit.none,
            autoplay: true,
            dotSize: 3,
            images: [
              FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/c1.jpg'),
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/c2.jpg'),
              ),
              FittedBox(
                fit: BoxFit.cover,
                child: Image.asset('assets/images/c3.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
