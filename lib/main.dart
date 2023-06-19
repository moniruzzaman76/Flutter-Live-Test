import 'package:flutter/material.dart';

import 'counter_home_screen.dart';

void main() {
  runApp(const RunApp());
}

class RunApp extends StatelessWidget {
  const RunApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}





