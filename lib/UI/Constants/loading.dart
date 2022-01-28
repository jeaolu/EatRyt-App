import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  Loader({Key? key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: Container(
      child: CircularProgressIndicator(
        color: Colors.amber,
      ),
    ));
  }
}
