import 'package:flutter/material.dart';
import 'package:tenich/UI/Constants/categories_control.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          cat_control(),
          cat_control(),
          cat_control(),
          cat_control(),
        ],
      )),
    );
  }
}
