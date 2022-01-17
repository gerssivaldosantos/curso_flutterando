import 'package:flutter/material.dart';
import 'package:projeto/widgets/users.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: UserList(),
      ),
      floatingActionButton: Container(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/initial_page');
          },
          child: Icon(
            Icons.home,
            size: 50,
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
