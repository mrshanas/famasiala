
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_sharp),
        title: const Text(
          'Home screen',
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
