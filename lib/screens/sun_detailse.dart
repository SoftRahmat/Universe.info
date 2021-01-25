import 'package:explore_universe/constants.dart';
import 'package:explore_universe/screens/sun_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:explore_universe/screens/reusable_page.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SunDetailse extends StatelessWidget {
  static const String id = 'sun_detailse';

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
            image: AssetImage('images/sun.gif'),
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
                  text: ['SUN DETAILS'],
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
                      'The Sun:',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'The Sun accounts for 99.86% of the mass in the solar system.\n'
                      '\n'
                      'Over one million Earth\'s could fit inside the Sun.\n'
                      '\n'
                      'One day the Sun will consume the Earth.\n'
                      '\n'
                      'The energy created by the Sun\'s core is nuclear fusion.\n'
                      '\n'
                      'The Sun is almost a perfect sphere.\n'
                      '\n'
                      'The Sun is traveling at 220 km per second.\n',
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
                Navigator.pushNamed(context, SunPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
