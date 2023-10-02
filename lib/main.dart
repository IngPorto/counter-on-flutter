import 'package:flutter/material.dart';
import 'package:hello_world_app_flutter/presentation/screens/counter/counter_functions_screen.dart';
import 'package:hello_world_app_flutter/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterFunctionsScreen());
  }
}
