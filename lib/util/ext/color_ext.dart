import 'dart:ui';

extension ColorExt on Color {
  Color disabled() {
    // https://m3.material.io/foundations/interaction/states/applying-states#4aff9c51-d20f-4580-a510-862d2e25e931
    return withAlpha(38);
  }
}
