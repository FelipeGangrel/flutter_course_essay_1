import 'package:flutter/material.dart';
import 'package:essay1/text_controller.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Essay 1',
      color: Colors.deepPurple,
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.white,
        primarySwatch: Colors.red,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
          body1: TextStyle(
            color: Colors.white,
          ),
          button: TextStyle(
            color: Colors.deepPurple[400],
          )
        )
      ),
      home: TextController(),
    );
  }
}