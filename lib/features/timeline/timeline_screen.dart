import 'package:flutter/material.dart';
import 'package:flutter_birds/features/timeline/timeline_hook.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimelineScreen extends HookConsumerWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useTimelineUiModel(ref);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: uiModel.onClickedPost,
        child: const Icon(Icons.add),
      ),
      body: const Text('welcome to timeline'),
    );
  }
}
