import 'package:flutter/material.dart';
import 'package:projeto/widgets/blue_button.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  backToLogin() {
    Navigator.of(context).pushReplacementNamed('/');
  }

  goToCounterPage() {
    Navigator.of(context).pushReplacementNamed('/counter_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Lista de páginas',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            blueButton(context, "Contador", 25.0, 50.0, 0.3, goToCounterPage),
            const SizedBox(
              height: 20,
            ),
            blueButton(context, "Voltar ao Login", 25.0, 50.0, 0.3, backToLogin)
          ],
        ),
      ),
    );
  }
}
