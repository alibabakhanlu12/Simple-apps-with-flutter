// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playmusic(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded play({required int song, required Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playmusic(song);
        },
        color: color,
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                play(song: 1, color: Colors.deepPurple),
                play(song: 2, color: Colors.red),
                play(song: 3, color: Colors.blue),
                play(song: 4, color: Colors.green),
                play(song: 5, color: Colors.yellow),
                play(song: 6, color: Colors.orange),
                play(song: 7, color: Colors.teal),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
