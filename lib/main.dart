// ignore_for_file: use_key_in_widget_constructors, avoid_print
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() {
  runApp(AppWidget(title: "Curso Flutter"));
}

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(), theme: ThemeData(primarySwatch: Colors.red));
  }
}

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
    return Center(
      child: GestureDetector(
        child: Text("Flutterando contador : $counter"),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
