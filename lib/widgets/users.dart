import 'package:flutter/material.dart';
import 'package:projeto/widgets/user_card.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
        UserCard(),
      ],
    );
  }
}
