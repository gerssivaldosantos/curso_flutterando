import 'package:flutter/material.dart';
import 'package:projeto/widgets/blue_button.dart';
import 'package:projeto/widgets/blue_button_outlined.dart';

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

  goToUsersPage() {
    Navigator.of(context).pushReplacementNamed('/users_page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Image.network(
            'https://images.pexels.com/photos/4065158/pexels-photo-4065158.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Lista de páginas',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                blueButton(
                    context, "Contador", 25.0, 50.0, 0.3, goToCounterPage),
                const SizedBox(
                  height: 20,
                ),
                blueButton(context, "Usuários", 25.0, 50.0, 0.3, goToUsersPage),
                const SizedBox(
                  height: 20,
                ),
                blueButtonOutlined(
                    context, "Voltar ao Login", 25.0, 50.0, 0.5, backToLogin)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
