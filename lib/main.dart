import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue[300],
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Center(
                child: Text('Magical 8 Ball',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 25.0,
                    )),
              ),
            ),
            body: EightBall(
            ),
          )
      ));

}

class EightBall extends StatefulWidget{
  @override
  _EightBallState createState()=> _EightBallState();
  }

  class _EightBallState extends State<EightBall> {
  int eightBallFace = 1;


  void changeEightBallFace(){
  setState(() {
    eightBallFace = Random().nextInt(5)+1; ;

  });
  }

  @override
  Widget build(BuildContext context) {
  return Center(
  child: Row(
  children: <Widget>[
  Expanded(
  child: TextButton(onPressed: (){
  changeEightBallFace();
  },
  child: Image.asset('images/ball$eightBallFace.png'),
  ),
  ),
  ],
  ),
  );
  }
}

