import 'package:acorny_tree/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

import '../models/quests.dart';
import '../providers/quests.dart';
import '../themes.dart';
import '../widgets/app_bar.dart';

class QuestScreen extends ConsumerWidget {
  const QuestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final quests = watch(questsProvider);
    return Scaffold(
      appBar: const TreeAppbar(
        color: Themes.brown,
        sliver: false,
        title: Text('Quests'),
      ),
      extendBody: false,
      extendBodyBehindAppBar: false,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(12),
              itemCount: quests.length,
              itemBuilder: (BuildContext context, int index) {
                return QuestPreview(quest: quests[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class QuestPreview extends StatelessWidget {
  const QuestPreview({
    Key? key,
    required this.quest,
  }) : super(key: key);

  final Quest quest;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          quest.label,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Themes.brownAccent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(16),
          child: Column(children: [
            ...<Widget>[
              for (final task in quest.tasks)
                Row(children: [
                  const SizedBox(width: 8),
                  Text(task.label),
                  const Spacer(),
                  Icon(
                    LineIcons.checkCircle,
                    color: task.complete ? Colors.white : Colors.transparent,
                  ),
                ]),
            ].expand((e) => [const Divider(), e]).skip(1),
          ]),
        ),
      ],
    );
  }
}
