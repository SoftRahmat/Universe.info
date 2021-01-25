import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class AudioBg extends StatelessWidget {
  static const String id = 'audio_bg';
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        hoverColor: Colors.deepOrangeAccent,
        highlightColor: Colors.lightGreen,
        splashColor: Colors.deepOrange,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Icon(
          Icons.volume_up,
          color: Colors.cyanAccent,
          size: 35.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 150.0, right: 150.0),
      child: Material(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildKey(color: Colors.transparent, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
