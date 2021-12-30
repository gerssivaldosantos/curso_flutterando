import 'package:curso_flutterando/login_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  backToLogin() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Você se logou com sucesso ! '),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  backToLogin();
                },
                child: const Text('Voltar'))
          ],
        ),
      ),
    );
  }
}
