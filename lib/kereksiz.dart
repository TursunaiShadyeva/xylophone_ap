import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumb) {
    final player = AudioCache();
    player.play('note$soundNumb.wav');
  }

  Expanded buildKey({Color color, int soundNumb}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumb);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumb: 1),
              buildKey(color: Colors.orange, soundNumb: 2),
              buildKey(color: Colors.yellow, soundNumb: 3),
              buildKey(color: Colors.green, soundNumb: 4),
              buildKey(color: Colors.teal, soundNumb: 5),
              buildKey(color: Colors.blue, soundNumb: 6),
              buildKey(color: Colors.purple, soundNumb: 7),
            ],
          ),
        ),
      ),
    );
  }
}
   