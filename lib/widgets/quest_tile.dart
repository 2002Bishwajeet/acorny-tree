import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../themes.dart';

class QuestTile extends StatelessWidget {
  final int index;
  // ignore: sort_constructors_first
  const QuestTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        tileColor: Themes.dullGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        leading: Text(
          (index + 1).toString(),
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Themes.blackShade, fontWeight: FontWeight.bold),
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
  }
}
