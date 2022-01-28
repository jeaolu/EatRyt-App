import 'package:flutter/material.dart';

class cat_control extends StatefulWidget {
  @override
  _cat_controlState createState() => _cat_controlState();
}

class _cat_controlState extends State<cat_control> {
  bool isred = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              setState(
                () => isred = !isred,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: isred ? Color(0xFFD13636) : Colors.grey),
              height: 60,
              width: 65,
              child: Icon(Icons.food_bank),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Drinks',
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
