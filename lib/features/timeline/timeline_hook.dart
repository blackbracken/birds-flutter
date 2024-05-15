import 'package:flutter_birds/features/timeline/timeline_ui_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../router/router.dart';

TimelineUiModel useTimelineUiModel(WidgetRef ref) {
  final router = ref.watch(routerProvider);

  void onClickedPost() {
    router.pushRoute(BirdsRoute.Post);
  }

  return TimelineUiModel(
    onClickedPost: onClickedPost,
  );
}
