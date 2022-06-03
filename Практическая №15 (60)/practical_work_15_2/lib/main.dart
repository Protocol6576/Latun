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
  final List<int> _array = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final int index = i ~/ 2;
        if (index >= _array.length) {
          if(index>1){
            _array.add(_array[index-2]+_array[index-1]);
          }
          else{
            _array.add(index);
          }
        }
          return ListTile(
              title: Text(_array[index].toString(),
              ));
      },
    );
  }
}
