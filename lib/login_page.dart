// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:projeto/widgets/blue_button.dart';
import 'package:projeto/widgets/blue_button_outlined.dart';

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
      debugPrint('\n Ola $email\n$password');
      debugPrint('Não autenticado ! ');
    }
  }

  register() {
    debugPrint('Function not created !');
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
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      cursorHeight: 20,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.blue)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (text) {
                        password = text;
                      },
                      cursorHeight: 20,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          labelText: "Senha",
                          labelStyle: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              blueButton(context, "Entrar", 25.0, 50.0, 0.4, auth),
              Spacer(flex: 4),
              blueButtonOutlined(
                  context, "Registrar", 28.0, 50.0, 0.5, register),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
