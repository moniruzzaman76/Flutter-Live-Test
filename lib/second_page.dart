import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Text(
          'Congratulations! You reached 10!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
