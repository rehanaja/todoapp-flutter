import 'package:flutter/material.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/extensions.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widgets/display_white_text.dart';
import 'package:todoapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: '01 Juli 2026',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10),
                    DisplayWhiteText(text: 'My Todo list', fontSize: 40),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayListOfTasks(
                      tasks: [
                        Task(
                          title: 'title 1',
                          note: 'note',
                          time: '20:00',
                          date: '01 Juli 2026',
                          isCompleted: false,
                          category: TaskCategories.work,
                        ),
                        Task(
                          title: 'title 2',
                          note: 'note',
                          time: '19:00',
                          date: '02 Juli 2026',
                          isCompleted: false,
                          category: TaskCategories.social,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text('Completed', style: context.textTheme.headlineMedium),
                    const Gap(20),
                    DisplayListOfTasks(
                      tasks: const [
                        Task(
                          title: 'title 1',
                          note: '',
                          time: '20:00',
                          date: '01 Juli 2026',
                          isCompleted: true,
                          category: TaskCategories.health,
                        ),
                        Task(
                          title: 'title 2',
                          note: 'note',
                          time: '19:00',
                          date: '02 Juli 2026',
                          isCompleted: true,
                          category: TaskCategories.shopping,
                        ),
                        
                      ],
                      isCompletedTask: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add New Task'),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
