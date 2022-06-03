import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Match;
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

class _MyHomePageState extends State<MyHomePage>
  with SingleTickerProviderStateMixin{
    late AnimationController controller;
    late Animation<double> posAn;
  void initState(){
  controller = AnimationController(
  vsync: this,
  duration: Duration(microseconds: 1000000));
  posAn = Tween(begin: -500.0, end: 500.0).animate(CurvedAnimation(parent: controller, curve: Curves.linear));
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    controller.repeat();
    return AnimatedBuilder(
      animation: controller, 
      builder: (context, child){
      return Transform.translate(
        offset: Offset(posAn.value, 0),
        child: Heart(),);
  });
  }
}
class Heart extends StatelessWidget{
  const Heart({Key? key}):super(key: key);
@override
Widget build (BuildContext context) {
  return Icon(
    Icons.airport_shuttle,
    size: 250,
    color: Colors.red,
  );
}
}