// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'counter_page.dart';
import 'initial_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/initial_page': (context) => InitialPage(),
        '/counter_page': (context) => CounterPage(),
      },
    );
  }
}
