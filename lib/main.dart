import 'package:flutter/material.dart';

const String _appTitle = 'RPGrass';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_appTitle),
        ),
        body: const Center(
          child: Text(_appTitle),
        ),
      ),
    );
  }
}
