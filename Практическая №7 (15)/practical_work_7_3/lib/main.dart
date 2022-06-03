import 'dart:html';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Container(
            color: Colors.black,
            width: 500,
            height: 500,
          ),
          Container(
            color: Colors.white12,
            width: 400,
            height: 400,
          ),
          Container(
            color: Colors.white30,
            width: 300,
            height: 300,
          ),
          Container(
            color: Colors.white54,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.white70,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}
