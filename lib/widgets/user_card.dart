import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/61440136?v=4'),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Developer',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey),
                  ),
                  Text('@Developer',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
