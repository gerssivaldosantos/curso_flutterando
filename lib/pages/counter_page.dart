import 'package:flutter/material.dart';
import 'package:projeto/widgets/blue_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  int _largestCounter = 0;

  increment() {
    setState(() {
      _counter++;
      if (_counter > _largestCounter) {
        _largestCounter = _counter;
      }
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

  reset() {
    setState(() {
      _counter = 0;
    });
  }

  backToInitialPage() {
    Navigator.of(context).pushReplacementNamed("/initial_page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Image.network(
                    "http://www.retroplace.com/pics/c64/packshots/17060--tapper.png")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('High score $_largestCounter',
                    style: Theme.of(context).textTheme.headline5),
                SizedBox(width: 20),
                Text(
                  'Taps $_counter',
                  style: TextStyle(fontSize: 40.0),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: Colors.green,
                  onPressed: increment,
                ),
                SizedBox(
                  width: 10.0,
                ),
                FloatingActionButton(
                  child: Icon(Icons.remove),
                  onPressed: decrement,
                ),
                SizedBox(
                  width: 10.0,
                ),
                FloatingActionButton(
                  child: Icon(Icons.autorenew),
                  onPressed: reset,
                  backgroundColor: Colors.blue,
                ),
              ],
            ),
            Spacer(),
            blueButton(context, "Voltar à página inicial", 25.0, 50.0, 0.6,
                backToInitialPage),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
