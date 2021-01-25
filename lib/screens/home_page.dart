import 'package:explore_universe/screens/certificate_page.dart';
import 'package:explore_universe/screens/earth_page.dart';
import 'package:explore_universe/screens/jupiter_page.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:explore_universe/screens/mercury_page.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:explore_universe/screens/universe_page.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:explore_universe/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:explore_universe/screens/chat_screen.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:explore_universe/components/audio_bg.dart';

FirebaseUser loggedInUser;

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeComponents(),
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                _auth.signOut();
                Navigator.pushNamed(context, WelcomeScreen.id);
              }),
        ],
        backgroundColor: Colors.orange.shade900,
        brightness: Brightness.dark,
        title: Text('EXPLORE UNIVERSE'),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/bg2.gif"),
                          fit: BoxFit.cover)),
                  child: ColorizeAnimatedTextKit(
                    text: ['SELECT THE PLANETS'],
                    textStyle: TextStyle(
                      fontSize: 25.0,
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
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/listbg.gif"),
                        fit: BoxFit.cover)),
                child: ListView(
                  children: [
                    ListTile(
                      title: Text(
                        "EXPLORE UNIVERSE",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, PlanetsPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "SUN",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, SunPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "EARTH",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, EarthPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "MOON",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MoonPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "MARS",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MarsPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "JUPITER",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, JupiterPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "SATURN",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, SaturnPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "URANUS",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, UranusPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "MERCURY",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, MercuryPage.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "CHAT WITH OTHERS",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, ChatScreen.id);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "EARN A CERTIFICATE",
//                          textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyanAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, CertificatePage.id);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeComponents extends StatefulWidget {
  @override
  _HomeComponentsState createState() => _HomeComponentsState();
}

class _HomeComponentsState extends State<HomeComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/mainbg.gif'),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                left: 15.0,
                right: 15.0,
                bottom: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.center,
                      child: ColorizeAnimatedTextKit(
                        text: ['BEGIN YOUR JOURNEY'],
                        textStyle: TextStyle(
                          fontSize: 27.0,
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
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 71.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/actor.gif',
                      height: 250.0,
                    ),
                  ),
                ],
              ),
            ),
            AudioBg(),
            Container(
              padding: EdgeInsets.only(left: 5.0, right: 5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'images/H.gif',
                      height: 90.0,
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: Image.asset(
                      'images/bg2.gif',
                      height: 90.0,
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  PageButton1(
                    title: 'EXPLORE UNIVERSE',
                    colour: Colors.lightBlueAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, PlanetsPage.id);
                    },
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      PageButton1(
                        title: 'NEXT PAGE',
                        colour: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, MoonPage.id);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
