import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: MyApp(),
          ),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<String> _array = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final int index = i ~/ 2;
        if (index >= _array.length) {
          _array.addAll([' 2 ^ $index = ${pow(2, index)}']);
        }
        if (index % 2 == 0) {
          return ListTile(
              leading: const Text('ЛАВ'),
              title: Text(
                _array[index],
              ),
              subtitle: Text('Число 2 перемножается $index раз'));
        } else {
          return ListTile(
              leading:
                  const Text('LAV', style: TextStyle(fontFamily: 'WakeSnake')),
              title: Text(_array[index]),
              subtitle: Text('Число 2 перемножается $index раз'));
        }
      },
    );
  }
}
