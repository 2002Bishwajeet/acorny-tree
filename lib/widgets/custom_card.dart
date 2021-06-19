import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomCard extends StatelessWidget {
  final String url;
  final String title;

  // ignore: sort_constructors_first
  const CustomCard({Key? key, required this.url, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Themes.grannySmithApple,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Lottie.asset(
              url,
              fit: BoxFit.fill,
              repeat: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(title,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
