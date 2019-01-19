import 'package:flutter/material.dart';
import 'dart:math';
import 'package:essay1/text_content.dart';
import 'package:english_words/english_words.dart';

class TextController extends StatefulWidget {
  @override
  _TextControllerState createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {

  String _textContent = 'Let`s start';

  void _changeTextContent() {

    String _captalize(String word) {
      return word[0].toUpperCase() + word.substring(1);
    } 

    final _random = Random();
    int _nounIndex = _random.nextInt(nouns.length); 
    int _adjIndex = _random.nextInt(adjectives.length);

    String adjective = _captalize(adjectives[_adjIndex]);
    String noun = nouns[_nounIndex];

    setState(() {
      _textContent = '$adjective $noun';
    });

  }

  Widget _mybutton(BuildContext context) => RaisedButton.icon(
      elevation: 10.0,
      highlightElevation: 0.0,
      disabledElevation: 0,
      icon: Icon(Icons.autorenew),
      label: Text('Randomize text'),
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).accentColor,
      textColor: Theme.of(context).primaryTextTheme.button.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      onPressed: _changeTextContent,
  );
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random text'),
        elevation: 10,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -1),
            radius: 2,
            colors: <Color> [
              Colors.deepPurple[500],
              Colors.deepPurple[900],
            ]
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextContent(content: _textContent),
              _mybutton(context),
            ],
          ),
        ),
      ),
    );
  }
}