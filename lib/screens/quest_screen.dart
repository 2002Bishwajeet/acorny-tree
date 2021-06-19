import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class QuestScreen extends StatelessWidget {
  const QuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Themes.creamcolor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.angleLeft),
          color: Themes.blackShade,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Quests',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    tileColor: Themes.dullGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    leading: Text(
                      index.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Themes.blackShade),
                    ),
                    title: Text(
                      'Buy Small Pot',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Themes.blackShade),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          LineIcons.checkCircle,
                          color: Themes.blackShade,
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
