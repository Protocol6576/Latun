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
      title: 'practical_work_23_2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'practical_work_23_2'),
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
  final List<Map> numbers = List.generate(
      100, (index) => {'id': index, 'name': 'Число №: ${index + 1}'}).toList();

  void ifwa() {
    var memory = numbers[1];
    int random = Random().nextInt(100);
    for (int i = 0; i < numbers.length; i++) {
      random = Random().nextInt(100);
      memory = numbers[i];
      numbers[i] = numbers[random];
      numbers[random] = memory;
    }
  }

  @override
  Widget build(BuildContext context) {
    ifwa();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            childAspectRatio: 5 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          itemCount: numbers.length,
          itemBuilder: (BuildContext ctx, index) {
            return Container(
              alignment: Alignment.center,
              child: Text(numbers[index]['name']),
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.circular(15),
              ),
            );
          },
        ),
      ),
    );
  }
}
