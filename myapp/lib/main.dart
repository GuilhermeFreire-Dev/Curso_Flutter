import 'package:flutter/material.dart';
import 'package:myapp/view/test_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'MyApp',
      home: TestScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
