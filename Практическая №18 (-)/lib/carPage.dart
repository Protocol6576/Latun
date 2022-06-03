import 'dart:html';
import 'package:flutter/material.dart';
import 'package:practical_work_18/carPage.dart';
import 'package:practical_work_18/main.dart';

class CarPage extends StatelessWidget {
  final Car car;
  const CarPage({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${car.name}'),
        centerTitle: true,
      ),
      body: MainCarPage(
        car: car,
      ),
    );
  }
}

class MainCarPage extends StatelessWidget {
  final Car car;
  const MainCarPage({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.red,
          ),
        ),
        child: Container(
          width: 400,
          height: 700,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 50,
                ),
                Image.asset(
                  '${car.photo}',
                  height: 200,
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ширина',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/images/cars_data/width.png',
                            height: 50,
                          ),
                          Text(
                            '${car.width}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'длина',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/images/cars_data/length.png',
                            height: 50,
                          ),
                          Text(
                            '${car.length}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'высота',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/images/cars_data/height.png',
                            height: 50,
                          ),
                          Text(
                            '${car.height}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'клиренс',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/images/cars_data/clearance.png',
                            height: 50,
                          ),
                          Text(
                            '${car.clearance}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'мест',
                            style: TextStyle(fontSize: 15),
                          ),
                          Image.asset(
                            'assets/images/cars_data/place.png',
                            height: 50,
                          ),
                          Text(
                            '${car.place}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
