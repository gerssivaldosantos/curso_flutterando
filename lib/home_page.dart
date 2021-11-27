// ignore_for_file: use_key_in_widget_constructors, avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  //new instance for createState with Statefulwidget type
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
        child: Switch(
            value: isCheck,
            onChanged: (value) {
              setState(() {
                isCheck = !isCheck;
              });
            }),
      ),
    );
  }
}
