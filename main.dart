import 'package:flutter/material.dart';
import 'splash1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Report App',
      theme: ThemeData(useMaterial3: true),
      home: const Splash1(),
    );
  }
}
