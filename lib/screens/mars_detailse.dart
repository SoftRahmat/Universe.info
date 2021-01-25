import 'package:explore_universe/constants.dart';
import 'package:explore_universe/screens/mars_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:explore_universe/screens/reusable_page.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MarsDetailse extends StatelessWidget {
  static const String id = 'mars_detailse';

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
            image: AssetImage('images/marsbg.gif'),
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
                  text: ['MARS DETAILS'],
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
                      'The Mars:',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'Mars and Earth have approximately the same landmass.\n'
                      '\n'
                      'Mars is home to the tallest mountain in the solar system.\n'
                      '\n'
                      'Only 18 missions to Mars have been successful.\n'
                      '\n'
                      'Mars has the largest dust storms in the solar system.\n'
                      '\n'
                      'On Mars the Sun appears about half the size as it does on Earth.\n'
                      '\n'
                      'Pieces of Mars have fallen to Earth.\n',
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
                Navigator.pushNamed(context, MarsPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
