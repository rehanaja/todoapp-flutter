import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/data/data.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: task.category.color.withValues(alpha: 0.2),
              border: Border.all(width: 2, color: task.category.color),
            ),
            child: Center(
              child: Icon(task.category.icon, color: task.category.color),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(task.title), Text(task.time)],
            ),
          ),
          Checkbox(value: task.isCompleted, onChanged: (value) {}),
        ],
      ),
    );
  }
}
