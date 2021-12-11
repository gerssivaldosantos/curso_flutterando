import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  //Basicamente, a função principal serve de casca
  //para a função State
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  // Late garante a inicialização da váriavel, é uma nova exigência do flutter
  // Em relação a isso
  late int number;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    number = 0;
  }

  @override
  //Esse método build é renderizado sempre que algo é modificado com
  //método setState()
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(title: const Text("Contador")),
        body: Center(
          child: Text(
            "$number",
            style: const TextStyle(fontSize: 70),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              number++;
            });
          },
        ),
      ),
    );
  }
}
