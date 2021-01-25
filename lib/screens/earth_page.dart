import 'package:explore_universe/screens/certificate_page.dart';
import 'package:explore_universe/screens/earth_detailse.dart';
import 'package:explore_universe/screens/home_page.dart';
import 'package:explore_universe/screens/universe_page.dart';
import 'package:flutter/material.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:explore_universe/screens/jupiter_page.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:explore_universe/screens/mercury_page.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:explore_universe/screens/chat_screen.dart';

class EarthPage extends StatefulWidget {
  static const String id = 'earth_page';
  @override
  _EarthPageState createState() => _EarthPageState();
}

class _EarthPageState extends State<EarthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SunComponents(),
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
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

class SunComponents extends StatefulWidget {
  @override
  _SunComponentsState createState() => _SunComponentsState();
}

class _SunComponentsState extends State<SunComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/earthmain.gif'),
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
                top: 15.0,
                left: 15.0,
                right: 15.0,
                bottom: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      alignment: Alignment.center,
                      child: ColorizeAnimatedTextKit(
                        text: ['OUR EARTH'],
                        textStyle: TextStyle(
                          fontSize: 30.0,
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
              height: 150.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'images/ship2.png',
                      height: 200.0,
                      width: 150.0,
                    ),
                  ),
                  SizedBox(
                    width: 180.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: CircleAvatar(
                          child: Icon(
                            Icons.photo_album,
                            size: 55.0,
                            color: Colors.cyan.shade200,
                          ),
                          backgroundColor: Colors.black12,
                          radius: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'images/earthbg.gif',
                      height: 140.0,
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
                    title: 'BACK TO HOME PAGE',
                    colour: Colors.lightBlueAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.id);
                    },
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Row(
                    children: <Widget>[
                      PageButton1(
                        title: 'EARTH DETAILS',
                        colour: Colors.blueAccent,
                        onPressed: () {
                          Navigator.pushNamed(context, EarthDetailse.id);
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
