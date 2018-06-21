import 'dart:ui';

import 'package:flutter/material.dart';

import './home/landingPage.dart';

void main() {
  runApp(new MaterialApp(
      title: "Ludusz", color: Colors.redAccent.shade700, home: new HomePage()));
}

class UISplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: new FlutterLogo()),
          new Center(
            child: new Center(
              child: new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new ClipRect(
                  child: new BackdropFilter(
                    filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: new Container(
                      decoration: new BoxDecoration(
                          color: Colors.blue.withOpacity(0.5)),
                      child: new Center(
                        child: new Text('Ludusz',
                            style: Theme.of(context).textTheme.display3),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
