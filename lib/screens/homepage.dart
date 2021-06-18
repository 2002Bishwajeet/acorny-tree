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
      body: Center(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Budget',
                style: Theme.of(context).textTheme.headline5,
              ),
              TextFormField(
                decoration: const InputDecoration(prefixText: '\$'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
