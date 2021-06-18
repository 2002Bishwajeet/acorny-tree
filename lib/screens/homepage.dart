import 'package:acorny_tree/widgets/buttonwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: const Center(
          child: Button(text: 'yolo'),
        ),
      ),
    );
  }
}
