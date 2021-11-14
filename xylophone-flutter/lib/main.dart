import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();
  void playSound(int note){
    final player = AudioCache();
    player.play('note$note.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Column(
            children:<Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: (){
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: (){
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: (){
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: (){
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: (){
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: (){
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: (){
                  playSound(7);
                },
              ),
            ],
          )

        ),
      ),
    );
  }
}
