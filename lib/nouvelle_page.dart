import 'package:flutter/material.dart';

class NouvellePage extends StatelessWidget {
  NouvellePage(String title) {
    this.title = title;
  }

  String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(
          "Je suis nouvelle page",
          textScaleFactor: 2,
          textAlign: TextAlign.center,
          style: new TextStyle(color: Colors.teal, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
