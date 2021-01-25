import 'package:explore_universe/screens/certificate_page.dart';
import 'package:explore_universe/screens/earth_page.dart';
import 'package:explore_universe/screens/home_page.dart';
import 'package:explore_universe/screens/jupiter_page.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:explore_universe/screens/mercury_page.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:explore_universe/screens/universe_page.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:flutter/material.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:explore_universe/screens/chat_screen.dart';


class DownloadPage extends StatefulWidget {
  static const String id = 'download_page';
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CertificateComponents(),
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              }),
        ],
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

class CertificateComponents extends StatefulWidget {
  @override
  _CertificateComponentsState createState() => _CertificateComponentsState();
}

class _CertificateComponentsState extends State<CertificateComponents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/earthbg.gif'),
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
                        text: ['YOUR CERTIFICATE IS READY'],
                        textStyle: TextStyle(
                          fontSize: 23.0,
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
              height: 20.0,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/certificate1.jpg',
                      height: 301.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 70.0, left: 5.0, right: 5.0),
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
                  Center(
                    child: PageButton1(
                      title: 'BACK TO HOME PAGE',
                      colour: Colors.lightBlueAccent,
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      PageButton1(
                        title: 'DOWNLOAD NOW',
                        colour: Colors.blueAccent,
                        onPressed: () {
//                          Navigator.pushNamed(context, QuizPage.id);
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
