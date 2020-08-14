import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Animal Sounds')),
          backgroundColor: Colors.greenAccent,
        ),
        body: Sounds(),
      ),
    ),
  );
}

class Sounds extends StatefulWidget {
  @override
  _SoundsState createState() => _SoundsState();
}

class _SoundsState extends State<Sounds> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('dog.wav');
                    },
                    child: Image.asset('images/dog.jpg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('cat.wav');
                    },
                    child: Image.asset('images/cat.jpg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('cow.wav');
                    },
                    child: Image.asset('images/cow.jpg'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('lion.flac');
                    },
                    child: Image.asset('images/lion.jpg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('elephant.wav');
                    },
                    child: Image.asset('images/elephant.jpg'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('horse.m4a');
                    },
                    child: Image.asset('images/horse.webp'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
