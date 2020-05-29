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
  Expanded crearTecla({Color color, int nota, String text}){
    return Expanded(
      child:FlatButton(
        onPressed: (){
          teclasSound(nota);
          },
        child: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        color: color,
        splashColor: Colors.blueGrey,
        shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0),side: BorderSide(color: Colors.white)),
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
              crearTecla(nota: 1, color: Colors.redAccent, text: "Lightaber On"),
              crearTecla(nota: 2, color: Colors.lightGreen, text: "Lightsaber Off"),
              crearTecla(nota: 3, color: Colors.lightBlue, text: "Moving saber"),
              crearTecla(nota: 4, color: Colors.red, text: "Deflecting"),
              crearTecla(nota: 5, color: Colors.yellow, text: "Fight"),
              crearTecla(nota: 6, color: Colors.blue[900], text: "Fight 2"),
              crearTecla(nota: 7, color: Colors.lightGreen, text: "Wielding"),
              crearTecla(nota: 8, color: Colors.blue, text: "Lightsabers clash"),
              crearTecla(nota: 9, color: Colors.lightGreenAccent, text: "Fast Move"),
              crearTecla(nota: 10, color: Colors.yellow[700], text: "Holding")
            ],
          ),
        ),
      ),
    );
  }
}
