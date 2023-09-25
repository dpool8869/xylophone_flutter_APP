// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  
  void playSound(sound) {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }

  Expanded buildKey({required Color color, required String sound}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(onPressed: () {
          playSound(sound);
        },
          child: Text(""),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sound: "note1.wav"),
              buildKey(color: Colors.orange, sound: "note2.wav"),
              buildKey(color: Colors.yellow, sound: "note3.wav"),
              buildKey(color: Colors.green, sound: "note4.wav"),
              buildKey(color: Colors.teal, sound: "note5.wav"),
              buildKey(color: Colors.blue, sound: "note6.wav"),
              buildKey(color: Colors.purpleAccent, sound: "note7.wav"),
            ],
          )
        ),
      ),
    );
  }
}

