import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  //Function to play sound
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildExpanded(
                color: Colors.red,
                soundNumber: 1,
                text: Text('A'),
              ),
              buildExpanded(
                color: Colors.black12,
                soundNumber: 2,
                text: Text('B'),
              ),
              buildExpanded(
                color: Colors.grey,
                soundNumber: 3,
                text: Text('C'),
              ),
              buildExpanded(
                color: Colors.blue,
                soundNumber: 4,
                text: Text('D'),
              ),
              buildExpanded(
                color: Colors.teal,
                soundNumber: 5,
                text: Text('E'),
              ),
              buildExpanded(
                color: Colors.amber,
                soundNumber: 6,
                text: Text('F'),
              ),
              buildExpanded(
                color: Colors.red,
                soundNumber: 7,
                text: Text('G'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded({Color color, int soundNumber, Text text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: text,
      ),
    );
  }
}
