// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto/pages/counter_page.dart';
import 'package:projeto/pages/initial_page.dart';
import 'package:projeto/pages/login_page.dart';
import 'package:projeto/pages/users_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(primarySwatch: Colors.red, brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      initialRoute: '/initial_page',
      routes: {
        '/': (context) => LoginPage(),
        '/initial_page': (context) => InitialPage(),
        '/counter_page': (context) => CounterPage(),
        '/users_page': (context) => UsersPage(),
      },
    );
  }
}
