import 'package:explore_universe/constants.dart';
import 'package:explore_universe/screens/uranus_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:explore_universe/screens/reusable_page.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class UranusDetailse extends StatelessWidget {
  static const String id = 'uranus_detailse';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('EXPLORE UNIVERSE'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/uranusbg.gif'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: ColorizeAnimatedTextKit(
                  text: ['URANUS DETAILS'],
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
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Colors.black54,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'The Uranus:',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'Uranus was officially discovered by Sir William Herschel in 1781.\n'
                      '\n'
                      'Uranus turns on its axis once every 17 hours, 14 minutes.\n'
                      '\n'
                      'Uranus makes one trip around the Sun every 84 Earth years.\n'
                      '\n'
                      'Uranus is often referred to as an “ice giant” planet.\n'
                      '\n'
                      'Uranus hits the coldest temperatures of any planet.\n'
                      'Only one spacecraft has flown by Uranus.\n',
                      style: kBMITextStyle,
                    ),
                    Text(
                      '',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            PageButton1(
              title: 'VIEW PREVIOUS PAGE',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, UranusPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
