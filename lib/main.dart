import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 79, 142),
          title: Center(
            child: Text(style: TextStyle(color: Colors.white),
            'Ask Me Anything'
            ),
          ),
        ),
        body: EightBall(),
      ),
    ),
  );
}

class EightBall extends StatefulWidget {
  const EightBall({super.key});

  @override
  State<EightBall> createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int chance = 5;

  void chanceChange() {
    setState(() {
       chance = Random().nextInt(5) +1; 
    });
   
  }
  @override
  Widget build(BuildContext context) {
    return Center(child:
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Expanded(
          child: TextButton(
            onPressed: () {
              chanceChange();
            },
            child: Image.asset('images/ball$chance.png')
          ),)
      ]
    ));
  }
}
