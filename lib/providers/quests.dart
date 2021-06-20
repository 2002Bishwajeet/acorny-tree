import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/quests.dart';

final questsProvider = Provider((ref) {
  return const <Quest>[
    Quest(
      label: 'Build your first garden',
      tasks: [
        Task(label: 'Buy small pot', complete: true),
        Task(label: 'Buy seeds', complete: true),
        Task(label: 'Buy soil', complete: false),
      ],
    ),
  ];
});
