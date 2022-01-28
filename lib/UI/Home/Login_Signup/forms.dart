import 'package:flutter/material.dart';
import 'package:tenich/Data/data.dart';

class Forms extends StatefulWidget {
  Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  late String email;
  late String password;
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) => setState(() => this.email = value),
              autofillHints: [AutofillHints.email],
              decoration: InputDecoration(
                  labelStyle: TextStyle(color: Color(0xFFD13636)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD13636),
                    ),
                  ),
                  focusColor: Colors.red,
                  fillColor: Colors.grey,
                  labelText: 'Email',
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: isPasswordVisible,
              onChanged: (value) => setState(() => this.password = value),
              autofillHints: [AutofillHints.email],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                focusColor: Color(0xFF597AD6),
                labelStyle: TextStyle(
                  color: Color(0xFF597AD6),
                ),
                hintText: 'Password',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFB1A0A0)),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () => isPasswordVisible = !isPasswordVisible,
                    );
                  },
                  icon: isPasswordVisible
                      ? Icon(
                          Icons.visibility_off,
                          color: Color(0xFFD13636),
                        )
                      : Icon(
                          Icons.visibility,
                          color: Color(0xFFD13636),
                        ),
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Data(context, e_email: email, p_password: password);

                Navigator.pushNamed(context, '/Home_Screen');
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFD13636),
                    borderRadius: BorderRadius.circular(8)),
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
