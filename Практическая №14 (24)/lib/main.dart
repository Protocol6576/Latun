import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Корзина'),
          centerTitle: true,
        ),
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  List<int> count = [0, 0, 0];
  List<int> price = [50, 50, 0];
  List<int> discount = [10, 0, 0];

  int totaldiscount = 0;
  int totalPrice = 0;

  void _ChangeCart(int obj, int action) {
    count[obj] += action;
    totaldiscount += action * discount[obj];
    totalPrice += action * price[obj];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black26,
                ),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/01.jpg',
                  width: 150,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Филадельфия Лайт',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Лосось сливочный сыр, огурец, рис.\n'
                        'Порция 8шт. Вес: 190 гр.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.add,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: () {
                                      int obj = 0;
                                      _ChangeCart(obj, 1);
                                    },
                                  ),
                                  Text(
                                    '${count[0]}',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.remove,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: () {
                                      int obj = 0;
                                      if (count[obj] != 0) {
                                        _ChangeCart(obj, -1);
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(
                                    '${price[0] - discount[0]} р.',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    '${price[0]} р.',
                                    style: TextStyle(
                                      fontSize: 30,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black26,
                ),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/01.jpg',
                  width: 150,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Филадельфия',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Лосось сливочный сыр, огурец, рис.\n'
                        'Порция 8шт. Вес: 220 гр.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.add,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: () {
                                      int obj = 1;
                                      _ChangeCart(obj, 1);
                                    },
                                  ),
                                  Text(
                                    '${count[1]}',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.remove,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: () {
                                      int obj = 1;
                                      if (count[obj] != 0) {
                                        _ChangeCart(obj, -1);
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(
                                    '${price[1]} р.',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black26,
                ),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/01.jpg',
                  width: 150,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Гейша',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Лосось сливочный сыр, огурец, рис.\n'
                        'Порция 8шт. Вес: 180 гр.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.add,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: null,
                                    /* () {
                                      int obj = 2;
                                      _ChangeCart(obj, 1);
                                    }, */
                                  ),
                                  Text(
                                    '${count[2]}',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.white),
                                    ),
                                    child: Ink(
                                      color: Colors.green,
                                      child: Icon(
                                        Icons.remove,
                                        size: 60,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    onPressed: null,
                                    /* () {
                                      int obj = 2;
                                      if (count[obj] != 0) {
                                        _ChangeCart(obj, -1);
                                      }
                                    }, */
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  Text(
                                    '${price[2]} р.',
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.black26,
                ),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Скидка:  ${totaldiscount}'),
                Container(height: 10),
                Text('Доставка: бесплатно'),
                Container(height: 10),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Center(
                            child: Container(
                              width: 100,
                              child: Text(
                                'Итого: ${totalPrice - totaldiscount}',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  width: 2,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Оформить'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
