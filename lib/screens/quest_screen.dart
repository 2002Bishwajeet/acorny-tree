import 'package:acorny_tree/themes.dart';
import 'package:acorny_tree/widgets/quest_tile.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class QuestScreen extends StatelessWidget {
  const QuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineIcons.angleLeft),
        ),
      ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Themes.brownish,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Quests',
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return QuestTile(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
