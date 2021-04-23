import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i){
    final player = AudioCache();
    player.play('note$i.wav');
  }
  Expanded buildExpnadedWidget({Color color , int soundNumber}){
    return Expanded(
      child:  FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Xylophone',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildExpnadedWidget(color: Colors.tealAccent, soundNumber: 1),
              buildExpnadedWidget(color: Colors.redAccent, soundNumber: 2),
              buildExpnadedWidget(color: Colors.deepPurpleAccent, soundNumber: 3),
              buildExpnadedWidget(color: Colors.deepOrangeAccent, soundNumber: 4),
              buildExpnadedWidget(color: Colors.lightBlue, soundNumber: 5),
              buildExpnadedWidget(color: Colors.green, soundNumber: 6),
              buildExpnadedWidget(color: Colors.orange, soundNumber: 7),



            ],
          ),





        ),
      ),
    );
  }
}
