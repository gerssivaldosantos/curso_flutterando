import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

main() {
  runApp(AppWidget(title: "Curso Flutter"));
}

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text("Flutterando"),
      ),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
