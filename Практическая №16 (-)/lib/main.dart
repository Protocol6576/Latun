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
  late Color _roundCollor = Colors.red;
  List<Color> colors = <Color>[
    Colors.transparent,
    Colors.red,
    Colors.yellow,
    Colors.green,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final _myStyle =
        ButtonStyle(minimumSize: MaterialStateProperty.all(Size(150, 30)));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            width: 160,
            height: 160,
            decoration: new BoxDecoration(
              color: colors[index],
              border: Border.all(
                color: Colors.black,
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                index = 1;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('КРАСНЫЙ'),
              ],
            ),
            style: _myStyle,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                index = 2;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: new BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('ЖЕЛТЫЙ'),
              ],
            ),
            style: _myStyle,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                index = 3;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: new BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('ЗЕЛЕНЫЙ'),
              ],
            ),
            style: _myStyle,
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                index = 0;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Reset'),
              ],
            ),
            style: _myStyle,
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
