import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        colors: [Colors.cyan, Colors.blueAccent, Colors.teal],
      ),
    ),
  ));
}
