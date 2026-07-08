import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/providers/providers.dart';
import 'package:todoapp/utils/utils.dart';

class AppAlerts {
  AppAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.surface)),
        backgroundColor: context.colorScheme.primary,
      ),
    );
  }

  static Future<void> showDeleteAlertDialog(BuildContext context, WidgetRef ref, Task task) async {
    await showDialog(context: context, builder: (ctx) {
      Widget cancelButton = TextButton(
        onPressed: () => Navigator.of(ctx).pop(),
        child: const Text('NO'),
      );

      Widget deleteButton = TextButton(
        onPressed: () async {
          await ref.read(taskProvider.notifier).deleteTask(task);
          AppAlerts.displaySnackBar(context, 'Task deleted successfully');
          Navigator.of(ctx).pop();
        },
        child: const Text('YES'),
      );

      return AlertDialog(
        title: const Text('Are you sure you want to delete this task?'),
        actions: [
          deleteButton,
          cancelButton,
        ],
      );
    });
  }
}
