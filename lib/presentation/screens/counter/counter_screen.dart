import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$contador',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(
            'Click${contador == 1 ? '' : 's'}',
            style: TextStyle(fontSize: 25),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increment();
          print('Hola');
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }

  void increment() {
    setState(() {
      contador++;
    });
  }
}
