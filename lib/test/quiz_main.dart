import 'package:explore_universe/screens/certificate_page.dart';
import 'package:explore_universe/screens/chat_screen.dart';
import 'package:explore_universe/screens/earth_page.dart';
import 'package:explore_universe/screens/jupiter_page.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:explore_universe/screens/mercury_page.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:explore_universe/screens/universe_page.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:explore_universe/test/download_page.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:explore_universe/test/quiz_brain.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

QuizBrain quizBrain = QuizBrain();

class QuizBar extends StatefulWidget {
  static const String id = 'quiz_main';
  @override
  _QuizBarState createState() => _QuizBarState();
}

class _QuizBarState extends State<QuizBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizMain(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pushNamed(context, DownloadPage.id);
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

class QuizMain extends StatefulWidget {
  @override
  _QuizMainState createState() => _QuizMainState();
}

class _QuizMainState extends State<QuizMain> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/questionbg.gif'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    backgroundColor: Colors.black45,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Material(
                elevation: 5.0,
                animationDuration: Duration(microseconds: 5),
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  color: Colors.black45,
                  hoverColor: Colors.orange.shade600,
                  splashColor: Colors.lightGreenAccent,
                  minWidth: 150.0,
                  height: 42.0,
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25.0,
                    ),
                  ),
                  onPressed: () {
                    //The user picked true.
                    checkAnswer(true);
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Material(
                elevation: 5.0,
                animationDuration: Duration(microseconds: 5),
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15.0),
                child: MaterialButton(
                  color: Colors.black45,
                  hoverColor: Colors.orange.shade600,
                  splashColor: Colors.red,
                  minWidth: 150.0,
                  height: 42.0,
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.redAccent,
                    ),
                  ),
                  onPressed: () {
//The user picked false.
                    checkAnswer(false);
                  },
                ),
              ),
            ),
          ),
          Row(
            children: scoreKeeper,
          )
        ],
      ),
    );
  }
}
