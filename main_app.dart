import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Welcome to Main App!",
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
      ),
    );
  }
}
