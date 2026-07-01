import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Todo list',
      style: context.textTheme.headlineSmall?.copyWith(
        color: context.colorScheme.surface,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
