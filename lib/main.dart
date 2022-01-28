import 'package:flutter/material.dart';
import 'package:tenich/UI/Routes/wrap.dart';
import 'UI/Routes/wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap_route(),
    );
  }
}
