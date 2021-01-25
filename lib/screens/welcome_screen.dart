import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:explore_universe/screens/registration_screen.dart';
import 'package:explore_universe/screens/login_screen.dart';
import 'package:explore_universe/components/rounded_buton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/e.gif'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Container(
          margin: EdgeInsets.only(top: 300.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 23.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Hero(
                      tag: 'logo1',
                      child: Container(
                        child: Image.asset('images/logo1.png'),
                        height: 60.0,
                      ),
                    ),
                    ColorizeAnimatedTextKit(
                      text: ['Universe.info'],
                      textStyle: TextStyle(
                        fontSize: 36.0,
                        fontFamily: 'Anton Regular',
                        fontWeight: FontWeight.w700,
                      ),
                      colors: [
                        Colors.white,
                        Colors.blue,
                        Colors.yellow,
                        Colors.red,
                      ],
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                PageButton(
                  title: 'Log In',
                  colour: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                PageButton(
                  title: 'Register',
                  colour: Colors.blueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
