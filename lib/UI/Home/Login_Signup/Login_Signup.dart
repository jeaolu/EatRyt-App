import 'package:flutter/material.dart';
import 'package:tenich/Data/data.dart';
import 'package:tenich/UI/Constants/loading.dart';
import 'package:tenich/UI/Home/Login_Signup/forms.dart';

class Login_Signup_Screen extends StatefulWidget {
  Login_Signup_Screen({Key? key}) : super(key: key);

  @override
  _Login_Signup_ScreenState createState() => _Login_Signup_ScreenState();
}

class _Login_Signup_ScreenState extends State<Login_Signup_Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _iconAnimationController;
  late Animation<double> _iconAnimation;
  @override
  void initState() {
    super.initState();
    _iconAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceInOut);
    _iconAnimation.addListener(
      () => this.setState(() {}),
    );
    _iconAnimationController.forward();
  }

  late String email;
  late String password;
  bool isPasswordVisible = true;
  bool isprocessing = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.jpg',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black87, BlendMode.darken),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant,
                    size: _iconAnimation.value * 100,
                    color: Color(0xFFD13630),
                  ),
                  Text(
                    'Chop life',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border()),
                    child: TextFormField(
                      cursorColor: Colors.white,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white),
                      onChanged: (value) => setState(() => this.email = value),
                      autofillHints: [AutofillHints.email],
                      decoration: InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusColor: Colors.white,
                          fillColor: Colors.grey,
                          labelText: 'Email',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(8),
                        border: Border()),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.white,
                      obscureText: isPasswordVisible,
                      onChanged: (value) =>
                          setState(() => this.password = value),
                      autofillHints: [AutofillHints.email],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusColor: Colors.white,
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
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
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      setState(
                        () => isprocessing = !isprocessing,
                      );
                      Future.delayed(Duration(seconds: 4), () {
                        Data(context, e_email: email, p_password: password);
                        Navigator.pushNamed(context, '/Home_Screen');
                      });
                    },
                    child: isprocessing
                        ? Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFD13636),
                                borderRadius: BorderRadius.circular(8)),
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFD13636),
                                borderRadius: BorderRadius.circular(8)),
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                          ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


/*Container(
        padding: EdgeInsets.symmetric(horizontal: 37),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '*',
                        style:
                            TextStyle(fontSize: 100, color: Color(0xFFD13636)),
                      ),
                    ],
                  ),
                ),
              ),
              Text('Chop life',
                  style: TextStyle(
                      fontWeight: FontWeight.w100, color: Colors.black)),
              SizedBox(
                height: 40,
              ),
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
                  Loader();
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
      ),*/


// last cut//
/*





Scaffold(
          backgroundColor: Colors.black87,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/c3.jpg',
                fit: BoxFit.cover,
                color: Colors.black26,
                colorBlendMode: BlendMode.darken,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restaurant,
                    size: _iconAnimation.value * 100,
                    color: Color(0xFFD13630),
                  ),
                  Text(
                    'Chop life',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) =>
                              setState(() => this.email = value),
                          autofillHints: [AutofillHints.email],
                          decoration: InputDecoration(
                              hoverColor: Colors.white,
                              labelStyle: TextStyle(color: Color(0xFFD13636)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFD13636),
                                ),
                              ),
                              focusColor: Colors.red,
                              fillColor: Colors.white,
                              labelText: 'Email',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: isPasswordVisible,
                          onChanged: (value) =>
                              setState(() => this.password = value),
                          autofillHints: [AutofillHints.email],
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            border: OutlineInputBorder(),
                            focusColor: Color(0xFFD13630),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(0xFFD13630),
                            ),
                            hintText: 'Password',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFD13630)),
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
                            setState(
                              () => isprocessing = !isprocessing,
                            );
                            Future.delayed(Duration(seconds: 4), () {
                              Data(context, e_email: email, p_password: password);
                              Navigator.pushNamed(context, '/Home_Screen');
                            });
                          },
                          child: isprocessing
                              ? Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD13636),
                                      borderRadius: BorderRadius.circular(8)),
                                  height: 60,
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD13636),
                                      borderRadius: BorderRadius.circular(8)),
                                  height: 60,
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),







*/