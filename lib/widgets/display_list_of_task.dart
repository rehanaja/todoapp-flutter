import 'package:flutter/material.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widgets/widgets.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    required this.tasks,
    this.isCompletedTask = false,
  });
  final List<Task> tasks;
  final bool isCompletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height = isCompletedTask
        ? deviceSize.height * 0.25
        : deviceSize.height * 0.3;
    final emptyTasksMessage = isCompletedTask
        ? 'There is no completed task yet'
        : 'There is no task todo!';

    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTasksMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: tasks.length,
              itemBuilder: (ctx, index) {
                final task = tasks[index];
                return InkWell(
                  onLongPress: () {
                    // TODO-Delete Task
                  },
                  onTap: () async {
                    // TODO-show task details

                    await showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      constraints: const BoxConstraints(
                        maxWidth: double.infinity,
                      ),
                      builder: (ctx) {
                        return SizedBox(
                          height: deviceSize.height * 0.5,
                          width: double.infinity,
                          child: TaskDetails(task: task),
                        );
                      },
                    );
                  },
                  child: TaskTile(task: task),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(thickness: 1.5);
              },
            ),
    );
  }
}
