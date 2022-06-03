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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.indigo,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 480),
            alignment: Alignment.center,
            child: const Text(
              "ФИОЛЕТОВЫЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.blue,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 400),
            alignment: Alignment.center,
            child: const Text(
              "СИНИЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.cyan,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 320),
            alignment: Alignment.center,
            child: const Text(
              "ГОЛУБОЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.green,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 240),
            alignment: Alignment.center,
            child: const Text(
              "ЗЕЛЁНЫЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.yellow,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 160),
            alignment: Alignment.center,
            child: const Text(
              "ЖЕЛТЫЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.orange,
              ),
            width: 250,
            height: 40,
            margin: const EdgeInsets.only(left: 80),
            alignment: Alignment.center,
            child: const Text(
              "ОРАНЖЕВЫЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black, style: BorderStyle.solid),
              color: Colors.red,
              ),
            width: 250,
            height: 40,
            alignment: Alignment.center,
            child: const Text(
              "КРАСНЫЙ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
