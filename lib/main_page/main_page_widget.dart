import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ss_test_task/constants/constants.dart';

///Widget that displays Main Page
class MainPageWidget extends StatelessWidget {
  ///Constructor
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

///Widget that is responsible for showing dynamic changing elements on the page
class MyHomePage extends StatefulWidget {
  ///Constructor
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int red = maxNumber;
  int green = maxNumber;
  int blue = maxNumber;
  void changeColor() {
    setState(
      () {
        red = Random().nextInt(maxNumber);
        green = Random().nextInt(maxNumber);
        blue = Random().nextInt(maxNumber);
      },
    );
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
          Center(
            child: Text(
              'Hello There',
              style: TextStyle(
                color: Color.fromRGBO(
                  red + textColor,
                  green + textColor,
                  blue + textColor,
                  1,
                ),
                fontSize: myFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
