import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int imagenumber=1;
  void  getpressed (){
    setState(() {
      imagenumber=Random().nextInt(5)+1;
    });
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                getpressed();
              },
              child: Image.asset('images/ball$imagenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
