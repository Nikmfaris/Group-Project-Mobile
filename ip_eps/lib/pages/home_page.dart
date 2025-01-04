import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('notes'),
        backgroundColor: Colors.blue, // Add your desired color here
      ),
      body: const Center(
        child: Text('Welcome to the Home Page'),
      ),
    );
  }
}
