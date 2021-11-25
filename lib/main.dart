import 'package:flutter/material.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (const Center(
      child: Text("Curso Flutter #6",
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 50.0, color: Colors.white60)),
    ));
  }
}
