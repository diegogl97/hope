import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Hope());
}

class Hope extends StatelessWidget{
  void teclasSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }
  Expanded crearTecla({Color color, int nota}){
    return Expanded(
      child:FlatButton(
        onPressed: (){
          teclasSound(nota);
        },
        color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              crearTecla(nota: 1, color: Colors.redAccent),
              crearTecla(nota: 2, color: Colors.lightGreen),
              crearTecla(nota: 3, color: Colors.lightBlue),
              crearTecla(nota: 4, color: Colors.red),
              crearTecla(nota: 5, color: Colors.yellow),
              crearTecla(nota: 6, color: Colors.blue[900]),
              crearTecla(nota: 7, color: Colors.lightGreen),
              crearTecla(nota: 8, color: Colors.blue),
              crearTecla(nota: 9, color: Colors.lightGreenAccent),
              crearTecla(nota: 10, color: Colors.yellow[700])
            ],
          ),
        ),
      ),
    );
  }
}
