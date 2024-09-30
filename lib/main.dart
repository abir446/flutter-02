import 'package:counter/pages/counter.dart';
import 'package:counter/pages/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Counter(),
      
      routes: {'/input': (context) => const InputPage()},
    );
  }
}
