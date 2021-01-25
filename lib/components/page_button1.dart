import 'package:flutter/material.dart';

class PageButton1 extends StatelessWidget {
  PageButton1({this.title, this.colour, @required this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 20.0,
      ),
      child: Material(
        elevation: 5.0,
        animationDuration: Duration(microseconds: 5),
        color: Colors.white24,
        borderRadius: BorderRadius.circular(9.0),
        child: MaterialButton(
          color: Colors.black38,
          hoverColor: Colors.orange.shade600,
          splashColor: Colors.deepOrange.shade200,
          onPressed: onPressed,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.tealAccent,
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
