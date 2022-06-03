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
  Color color1 = Colors.red;
  Color color2 = Colors.black;
  Color color3 = Colors.black;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: color1,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: color2,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: color3,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index++;
                  color1 = Colors.black;
                  color2 = Colors.black;
                  color3 = Colors.black;
                  if(index==3){
                    index=0;
                  }
                  if (index==0){
  color1 = Colors.red;}
                  else if (index==1){
  color2 = Colors.yellow;}
                  else if (index==2){
  color3 = Colors.green;}
                });
              },
              child: const Text('PRESS'),
            ),
          ],
        ))
      ],
    ));
  }
}
