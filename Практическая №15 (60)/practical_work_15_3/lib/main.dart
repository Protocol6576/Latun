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
  final List<num> _array = [];

  @override
  Widget build(BuildContext context) {
    int q=1,w=1,e=1;
    num last = 0;
    
    return ListView.builder(
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final int index = i ~/ 2;
        if (index >= _array.length) {
          int q2=0,w2=0,e2=0;
          num min = pow(2,q)*pow(3,w)*pow(5,e);
          for(int i1=0;i1<=q;i1++){
            for(int i2=0;i2<=w;i2++){
              for(int i3=0;i3<=e;i3++){
                num res =pow(2,i1)*pow(3,i2)*pow(5,i3);
                if(res<min && res>last){
                  min=res;
                  q2=i1;
                  w2=i2;
                  e2=i3;
                }}}}
                if(q2==q){
                  q++;}
                if(w2==w){
                  w++;}
                if(e2==e){
                  e++;}
          _array.add(pow(2,q2)*pow(3,w2)*pow(5,e2));
          last=min;
        }
          return ListTile(title: Text(_array[index].toString()));
      },
    );
  }
}
