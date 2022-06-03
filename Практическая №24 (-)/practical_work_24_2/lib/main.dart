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
    late Animation<double> scal;
  void initState(){
  controller = AnimationController(
  vsync: this,
  duration: Duration(microseconds: 100000));
  scal = Tween(begin: 1.0, end: 0.8).animate(controller);
  controller.addListener(() {
    if (controller.status==AnimationStatus.completed){
      controller.reverse();}
      else if(controller.status==AnimationStatus.dismissed){
      controller.forward();
    }
  });
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return AnimatedBuilder(
      animation: controller, 
      builder: (context, child){
      return Transform.scale(
        scale: scal.value,
        child: Heart(),);
  });
  }
}
class Heart extends StatelessWidget{
  const Heart({Key? key}):super(key: key);
@override
Widget build (BuildContext context) {
  return Icon(
    CupertinoIcons.heart_fill,
    size: 250,
    color: Colors.red,
  );
}
}