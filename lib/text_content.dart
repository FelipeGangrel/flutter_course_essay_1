import 'package:flutter/material.dart';

class TextContent extends StatelessWidget {

  final String content;

  TextContent({ this.content });

  @override
  Widget build(BuildContext context) {
    return Text(content,
      style: TextStyle(
        fontWeight: FontWeight.w100,
        fontSize: 38.0,
        fontFamily: "Cursive",
        color: Theme.of(context).primaryTextTheme.body1.color,
        shadows: <Shadow> [
          Shadow(
            blurRadius: 3.0,
            offset: Offset(0, 5),
            color: Colors.deepPurple[800],
          ),
        ]
      ),
    );
  }
}