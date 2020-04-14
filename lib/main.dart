import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

    Expanded buildKey({int soundIndex, Color color}) {
      return Expanded(
        child: RaisedButton(
          color: color,
          onPressed: () {
            AudioCache player = AudioCache();
            player.play('note$soundIndex.wav');
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
            children: <Widget>[
              buildKey(soundIndex: 1, color: Colors.red),
              buildKey(soundIndex: 2, color: Colors.purple),
              buildKey(soundIndex: 3, color: Colors.blue),
              buildKey(soundIndex: 4, color: Colors.green),
              buildKey(soundIndex: 5, color: Colors.orange),
              buildKey(soundIndex: 6, color: Colors.yellow),
              buildKey(soundIndex: 7, color: Colors.pink),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ),
      ),
    );
  }
}
