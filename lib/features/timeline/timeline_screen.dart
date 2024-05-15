import 'package:flutter/material.dart';
import 'package:flutter_birds/features/timeline/timeline_hook.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimelineScreen extends HookConsumerWidget {
  const TimelineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();
    final uiModel = useTimelineUiModel(ref);

    return Scaffold(
      floatingActionButton: SizedBox(
          width: 64,
          height: 64,
          child: FloatingActionButton(
            foregroundColor: theme.colorScheme.onPrimary,
            backgroundColor: theme.colorScheme.primary,
            shape: const CircleBorder(),
            elevation: 0,
            onPressed: uiModel.onClickedPost,
            child: const Icon(Icons.add),
          )),
      body: const Text('welcome to timeline'),
    );
  }
}
