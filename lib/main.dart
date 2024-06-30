import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(HolaMundoApp());
}

class HolaMundoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              FadeAnimatedText(
                'Hola mundo',
                textStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF Pro Display',
                ),
                duration: Duration(milliseconds: 2000),
              ),
            ],
            repeatForever: true,
            pause: Duration(milliseconds: 500),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
    );
  }
}
