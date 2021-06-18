import 'package:acorny_tree/widgets/buttonwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New Garden'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Button(text: 'yolo'),
        ),
      ),
    );
  }
}
