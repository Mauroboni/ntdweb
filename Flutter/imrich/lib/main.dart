import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Im Rich!',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo I am rich!'),
        ),
        body:  Center(
          child: Image.asset(
            'imagens/ruby.png',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
