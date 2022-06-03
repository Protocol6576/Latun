import 'package:flutter/material.dart';

void main() {
  runApp(
    const Text(
      'Hello Flutter',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
