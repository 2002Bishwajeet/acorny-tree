class Quest {
  const Quest({
    required this.label,
    required this.tasks,
  });

  final String label;
  final List<Task> tasks;
}

class Task {
  const Task({
    required this.label,
    required this.complete,
  });

  final String label;
  final bool complete;
}
