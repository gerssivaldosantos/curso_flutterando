// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  auth() {
    if (password == 'teste' && email == 'canalandows') {
      Navigator.of(context).pushReplacementNamed('/initial_page');
      debugPrint('Login realizado com sucesso');
    } else {
      debugPrint('Não autenticado ! ');
    }
  }

  Widget inputDecorated(String name) {
    return TextField(
      onChanged: (text) {
        email = text;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        border: OutlineInputBorder(),
        labelText: name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(
                flex: 4,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Image.asset("assets/images/logo.png")),
              SizedBox(
                height: 35,
              ),
              Container(
                //inputs width
                width: MediaQuery.of(context).size.width * 0.88,
                child: Column(
                  children: [
                    inputDecorated('Email'),
                    SizedBox(
                      height: 20,
                    ),
                    inputDecorated("Senha"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  auth();
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                //set the background colors of the button and the text
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 50,
                  child: Center(
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 6)
            ],
          ),
        ),
      ),
    );
  }
}
