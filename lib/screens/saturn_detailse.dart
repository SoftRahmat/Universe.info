import 'package:explore_universe/constants.dart';
import 'package:explore_universe/screens/saturn_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:explore_universe/screens/reusable_page.dart';
import 'package:explore_universe/components/page_button1.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SeturnDetailse extends StatelessWidget {
  static const String id = 'saturn_detailse';

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
            image: AssetImage('images/saturn.gif'),
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
                  text: ['SATURN DETAILS'],
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
                      'The Saturn:',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'Saturn is the least dense planet in the Solar System.\n'
                      '\n'
                      'Saturn is a flattened ball.\n'
                      '\n'
                      'The first astronomers thought the rings were moons.\n'
                      '\n'
                      'Saturn has only been visited 4 times by spacecraft.\n'
                      '\n'
                      'Saturn\'s rings could be old, or they could be young.\n'
                      '\n'
                      'Saturn has 62 moons.',
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
                Navigator.pushNamed(context, SaturnPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
