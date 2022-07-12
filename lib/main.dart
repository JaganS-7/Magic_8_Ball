import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(letterSpacing: 2,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: const MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int ballNumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
          onPressed: () {
            setState((){
              ballNumber=Random().nextInt(5)+1;
          });
        },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      );
  }
}
