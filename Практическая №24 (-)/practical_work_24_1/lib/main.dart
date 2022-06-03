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
      home: AnimationPage(),
    );
  }
}

class AnimationPage extends StatelessWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Анимация')),
      body: Center(
        child: AnimationWidget(),
      ),
    );
  }
}

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimationWidget> createState() => _AnimationWidgetState();
}

class _AnimationWidgetState extends State<AnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> rotation;
  int count1 = 0;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 6000),
    );
    rotation = Tween(begin: 0.0, end: 4 * Match.pi).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        rotation = Tween(begin: 0.0, end: 4 * Match.pi).animate(controller);
        controller.reverse();
      } else if (controller.status == AnimationStatus.dismissed) {
        rotation = Tween(begin: 0.0, end: 6 * Match.pi).animate(controller);
        controller.forward();
      }
    });

    super.initState();
  }

  @override
  void dispode() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: rotation.value,
          child: _MyContainer(),
        );
      },
    );
  }
}

class _MyContainer extends StatelessWidget {
  const _MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(color: Colors.orange),
      child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(color: Colors.black),
      ),
    );
  }
}
