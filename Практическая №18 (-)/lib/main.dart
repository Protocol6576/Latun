import 'dart:html';
import 'package:flutter/material.dart';
import 'package:practical_work_18/carPage.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Простая навигация',
      home: SimpleNavigation(),
    );
  }
}

class Car {
  final String name;
  final String photo;
  final String width;
  final String length;
  final String height;
  final String clearance;
  final String place;

  Car({
    required this.name,
    required this.photo,
    required this.width,
    required this.length,
    required this.height,
    required this.clearance,
    required this.place,
  });
}

class SimpleNavigation extends StatelessWidget {
  const SimpleNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Простая нафигация'),
        centerTitle: true,
      ),
      body: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
        child: Center(
          child: Container(
            width: 400,
            height: 700,
            child: Column(
              children: [
                Text(
                  'Автомобили',
                  style: TextStyle(fontSize: 40),
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_car,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Tiguan 8 Pro',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Tiguan 8 Pro',
                            photo: 'assets/images/cars_photo/Tiguan 8 Pro.png',
                            width: '1 705мм',
                            length: '4 722мм',
                            height: '1 860мм',
                            clearance: '210мм',
                            place: '4',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_car,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Volkswagen Polo',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Volkswagen Polo',
                            photo:
                                'assets/images/cars_photo/Volkswagen Polo.png',
                            width: '1 707мм',
                            length: '4 390мм',
                            height: '1 467мм',
                            clearance: '163мм',
                            place: '4',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_car,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Golf GTI',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Golf GTI',
                            photo: 'assets/images/cars_photo/Golf GTI.png',
                            width: '1 798мм',
                            length: '4 268мм',
                            height: '1 482мм',
                            clearance: '147мм',
                            place: '5',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_bus,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Volkswagen Multivan',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Volkswagen Multivan',
                            photo:
                                'assets/images/cars_photo/Volkswagen Multivan.png',
                            width: '1 904мм',
                            length: '4 904мм',
                            height: '1 990мм',
                            clearance: '209мм',
                            place: '6',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.directions_bus,
                      size: 30,
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Crafter Kasten',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Crafter Kasten',
                            photo:
                                'assets/images/cars_photo/Crafter Kasten.png',
                            width: '2 069мм',
                            length: '6 836мм',
                            height: '2 355мм',
                            clearance: '195мм',
                            place: '12',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                ),
                Row(
                  children: [
                    Transform.rotate(
                      angle: 180 * math.pi / 180,
                      child: Icon(
                        Icons.change_history,
                        size: 30,
                      ),
                    ),
                    Container(
                      width: 30,
                    ),
                    Text(
                      'Protocol 6576-1C',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(
                      child: IconButton(
                        alignment: Alignment.centerRight,
                        splashRadius: 1,
                        onPressed: () {
                          Car car = Car(
                            name: 'Protocol 6576-1C',
                            photo: 'assets/images/testp.png',
                            width: '1 111мм',
                            length: '1 111мм',
                            height: '1 111мм',
                            clearance: '111мм',
                            place: '1',
                          );
                          Route route = MaterialPageRoute(
                              builder: (context) => CarPage(
                                    car: car,
                                  ));
                          Navigator.push(context, route);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    )
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

class User {
  final String name;
  final int age;

  User({required this.name, required this.age});
}
