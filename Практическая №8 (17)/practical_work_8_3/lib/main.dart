import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Test your\nreaction speed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _color = Colors.grey[300];

  String _actionStr = 'Начать';
  int _reaction = 0;
  int sec = 0;
  var rnd = Random().nextInt(5) + 5;

  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      if (_actionStr == 'НАЖМИТЕ!') {
        _reaction++;
      }
    });
  }

  void _checkReaction() {
    setState(() {
      if (_actionStr == 'Начать') {
        _actionStr = 'Ждите';
        Timer(Duration(seconds: rnd), () {
          _reaction = -1;
          setState(() {
            _actionStr = 'НАЖМИТЕ!';
          });
        });
      } else if (_actionStr == 'НАЖМИТЕ!') {
        _actionStr = 'Начать';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.white10,
        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 400,
              color: _color,
              child: Center(
                child: Text(
                  '$_reaction ms',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              color: _color,
              child: FlatButton(
                onPressed: () {
                  _checkReaction();
                },
                child: Text(
                  _actionStr,
                  style: TextStyle(fontSize: 20),
                ),
                height: 200,
                minWidth: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
