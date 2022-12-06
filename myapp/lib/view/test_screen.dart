import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  String _value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _value,
              style: const TextStyle(fontSize: 28),
            ),
            ElevatedButton(
              onPressed: () => changeText(),
              child: const Text('ACTION'),
            )
          ],
        ),
      ),
    );
  }

  changeText() {
    setState(() {
      _value = _value.isEmpty ? _value = 'Hello' : DateTime.now().toString();
    });
  }
}
