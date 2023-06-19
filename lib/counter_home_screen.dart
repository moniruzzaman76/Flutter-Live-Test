import 'package:flutter/material.dart';
import 'package:flutter_live_test_2/second_page.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 5) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Counter value is 5!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      } else if (_counter == 10) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter Value: $_counter',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: _incrementCounter,
                      child: const Text('Increment'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: _decrementCounter,
                      child: const Text('Decrement'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
