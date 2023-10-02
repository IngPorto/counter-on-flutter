import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({Key? key}) : super(key: key);

  @override
  _CounterFunctionsScreenState createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                contador = 0;
              });
            },
          )
        ],
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
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        CustomButton(
          icon: Icons.refresh_rounded,
          onPressed: () => setState(() {
            contador = 0;
          }),
        ),
        SizedBox(height: 10),
        CustomButton(
          icon: Icons.plus_one,
          onPressed: increment,
        ),
        SizedBox(height: 10),
        CustomButton(
          icon: Icons.exposure_minus_1_outlined,
          onPressed: decrement,
        )
      ]),
    );
  }

  void increment() {
    setState(() {
      contador++;
    });
  }

  void decrement() {
    setState(() {
      if (contador > 0) contador--;
    });
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
