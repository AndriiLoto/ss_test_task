import 'dart:math';

import 'package:flutter/material.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Software Test Task',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const maxNumber = 255;
  int red = maxNumber;
  int green = maxNumber;
  int blue = maxNumber;
  void changeColor() {
    setState(() {
      red = Random().nextInt(maxNumber);
      green = Random().nextInt(maxNumber);
      blue = Random().nextInt(maxNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(red, green, blue, 1),
      body: Stack(
        children: [
          GestureDetector(
            onTap: changeColor,
          ),
          const Center(
            child: Text('Hello There'),
          ),
        ],
      ),
    );
  }
}
