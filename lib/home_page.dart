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
      floatingActionButton: FloatingActionButton.large(onPressed: () {
        setState(() {
          counter--;
        });
      }),
      appBar: AppBar(title: const Text("HomePage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              child: GestureDetector(
                  child: Text(
                    "Counter : $counter",
                  ),
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  }),
            ),
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
