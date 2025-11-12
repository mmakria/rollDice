import 'package:flutter/material.dart';

class TextHome extends StatelessWidget {
  const TextHome(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
