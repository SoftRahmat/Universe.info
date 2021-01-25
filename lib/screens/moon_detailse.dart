import 'package:explore_universe/constants.dart';
import 'package:explore_universe/screens/moon_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:explore_universe/screens/reusable_page.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MoonDetailse extends StatelessWidget {
  static const String id = 'moon_detailse';

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
            image: AssetImage('images/moondtl.gif'),
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
                  text: ['MOON DETAILS'],
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
                      'The Moon:',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'The Moon is Earth\'s only permanent natural satellite.\n'
                      '\n'
                      'The Moon is the second-densest satellite.\n'
                      '\n'
                      'The Moon always shows Earth the same face.\n'
                      '\n'
                      'The Moon\'s surface is actually dark.\n'
                      '\n'
                      'The Sun and the Moon are not the same size.\n'
                      '\n'
                      'The Moon is drifting away from the Earth.\n',
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
                Navigator.pushNamed(context, MoonPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
