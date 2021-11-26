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
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                child: Text(
                  "Counter : $counter",
                ),
                onTap: () {
                  setState(() {
                    counter++;
                  });
                }),
            FloatingActionButton.large(
                child: const Icon(Icons.add),
                backgroundColor: Colors.blueGrey,
                onPressed: () {
                  setState(() {
                    counter += 10;
                  });
                })
          ],
        ),
      ),
    );
  }
}
