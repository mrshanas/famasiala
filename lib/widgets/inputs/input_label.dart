import 'package:flutter/material.dart';

class InputLabel extends StatelessWidget {
  const InputLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.5,
        ),
      ),
    );
  }
}
