import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade300,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            backgroundColor: Colors.blue.shade900,
          ),
          body: BallEight(),
        ),
      ),
    );

class BallEight extends StatefulWidget {
  int imageNumber = 1;

  @override
  _BallEightState createState() => _BallEightState();
}

class _BallEightState extends State<BallEight> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            imageNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset(
          'images/ball$imageNumber.png',
        ),
      ),
    );
  }
}
