import 'package:flutter/material.dart';


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
  @override
  Widget build(BuildContext context) {
    return Center(child:
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Expanded(
          child: TextButton(
            onPressed: () {
              null;
            },
            child: Image.asset('images/ball1.png')
          ),)
      ]
    ));
  }
}
