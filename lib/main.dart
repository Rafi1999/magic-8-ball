import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Center(
          child: Text(
            'Ask Me Anything',
            textAlign: TextAlign.right,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 5;
  void ballchange() {
    setState(() {
      ballnumber = ballnumber + 1;
      print('$ballnumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          ballchange();
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
