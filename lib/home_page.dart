// ignore_for_file: use_key_in_widget_constructors

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HomePage")),
      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            )),
      ),
    );
  }
}
