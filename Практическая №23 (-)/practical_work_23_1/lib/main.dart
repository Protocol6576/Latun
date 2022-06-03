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
      title: 'practical_work_23_1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'practical_work_23_1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int fwa() {
  return (1);
}

class _MyHomePageState extends State<MyHomePage> {
  final numbers =
      List<int>.generate(25, (int index) => (Random().nextInt(2))).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          itemCount: numbers.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  numbers[index] = (numbers[index] + 1) % 2;
                  setState(() {});
                },
                child: Text('${numbers[index]}'),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                shape: BoxShape.circle,
              ),
            );
          },
        ),
      ),
    );
  }
}
