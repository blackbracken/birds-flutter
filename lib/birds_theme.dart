import 'package:flutter/material.dart';

import 'gen/fonts.gen.dart';

class BirdsTheme {
  const BirdsTheme(this.textTheme);
  final TextTheme textTheme;

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff34618d),
      surfaceTint: Color(0xff34618d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd0e4ff),
      onPrimaryContainer: Color(0xff001d35),
      secondary: Color(0xff525f70),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd6e4f7),
      onSecondaryContainer: Color(0xff0f1d2a),
      tertiary: Color(0xff425e91),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffd7e2ff),
      onTertiaryContainer: Color(0xff001b3f),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff191c20),
      surfaceVariant: Color(0xffdfe3eb),
      onSurfaceVariant: Color(0xff42474e),
      outline: Color(0xff73777f),
      outlineVariant: Color(0xffc2c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeff0f7),
      inversePrimary: Color(0xff9fcafc),
      primaryFixed: Color(0xffd0e4ff),
      onPrimaryFixed: Color(0xff001d35),
      primaryFixedDim: Color(0xff9fcafc),
      onPrimaryFixedVariant: Color(0xff164974),
      secondaryFixed: Color(0xffd6e4f7),
      onSecondaryFixed: Color(0xff0f1d2a),
      secondaryFixedDim: Color(0xffbac8db),
      onSecondaryFixedVariant: Color(0xff3b4857),
      tertiaryFixed: Color(0xffd7e2ff),
      onTertiaryFixed: Color(0xff001b3f),
      tertiaryFixedDim: Color(0xffabc7ff),
      onTertiaryFixedVariant: Color(0xff284677),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff104570),
      surfaceTint: Color(0xff34618d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4c78a5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff374453),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff687687),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff244273),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff5875a9),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff191c20),
      surfaceVariant: Color(0xffdfe3eb),
      onSurfaceVariant: Color(0xff3e434a),
      outline: Color(0xff5b5f67),
      outlineVariant: Color(0xff767b83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffeff0f7),
      inversePrimary: Color(0xff9fcafc),
      primaryFixed: Color(0xff4c78a5),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff315f8b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff687687),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff505d6d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff5875a9),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3f5c8e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff002440),
      surfaceTint: Color(0xff34618d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff104570),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff162331),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff374453),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00214b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff244273),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff8f9ff),
      onBackground: Color(0xff191c20),
      surface: Color(0xfff8f9ff),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffdfe3eb),
      onSurfaceVariant: Color(0xff1f242b),
      outline: Color(0xff3e434a),
      outlineVariant: Color(0xff3e434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffe1edff),
      primaryFixed: Color(0xff104570),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002f51),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff374453),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff212e3c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff244273),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff062c5b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd8dae0),
      surfaceBright: Color(0xfff8f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3f9),
      surfaceContainer: Color(0xffeceef4),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe1e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9fcafc),
      surfaceTint: Color(0xff9fcafc),
      onPrimary: Color(0xff003257),
      primaryContainer: Color(0xff164974),
      onPrimaryContainer: Color(0xffd0e4ff),
      secondary: Color(0xffbac8db),
      onSecondary: Color(0xff243140),
      secondaryContainer: Color(0xff3b4857),
      onSecondaryContainer: Color(0xffd6e4f7),
      tertiary: Color(0xffabc7ff),
      onTertiary: Color(0xff0c305f),
      tertiaryContainer: Color(0xff284677),
      onTertiaryContainer: Color(0xffd7e2ff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff101418),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffe1e2e8),
      surfaceVariant: Color(0xff42474e),
      onSurfaceVariant: Color(0xffc2c7cf),
      outline: Color(0xff8c9199),
      outlineVariant: Color(0xff42474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff34618d),
      primaryFixed: Color(0xffd0e4ff),
      onPrimaryFixed: Color(0xff001d35),
      primaryFixedDim: Color(0xff9fcafc),
      onPrimaryFixedVariant: Color(0xff164974),
      secondaryFixed: Color(0xffd6e4f7),
      onSecondaryFixed: Color(0xff0f1d2a),
      secondaryFixedDim: Color(0xffbac8db),
      onSecondaryFixedVariant: Color(0xff3b4857),
      tertiaryFixed: Color(0xffd7e2ff),
      onTertiaryFixed: Color(0xff001b3f),
      tertiaryFixedDim: Color(0xffabc7ff),
      onTertiaryFixedVariant: Color(0xff284677),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa4ceff),
      surfaceTint: Color(0xff9fcafc),
      onPrimary: Color(0xff00172c),
      primaryContainer: Color(0xff6994c3),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbeccdf),
      onSecondary: Color(0xff091725),
      secondaryContainer: Color(0xff8492a4),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb2cbff),
      onTertiary: Color(0xff001535),
      tertiaryContainer: Color(0xff7591c7),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101418),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101418),
      onSurface: Color(0xfffafaff),
      surfaceVariant: Color(0xff42474e),
      onSurfaceVariant: Color(0xffc7cbd3),
      outline: Color(0xff9fa3ab),
      outlineVariant: Color(0xff7f838b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff272a2f),
      inversePrimary: Color(0xff184a75),
      primaryFixed: Color(0xffd0e4ff),
      onPrimaryFixed: Color(0xff001224),
      primaryFixedDim: Color(0xff9fcafc),
      onPrimaryFixedVariant: Color(0xff003860),
      secondaryFixed: Color(0xffd6e4f7),
      onSecondaryFixed: Color(0xff051220),
      secondaryFixedDim: Color(0xffbac8db),
      onSecondaryFixedVariant: Color(0xff2a3746),
      tertiaryFixed: Color(0xffd7e2ff),
      onTertiaryFixed: Color(0xff00102c),
      tertiaryFixedDim: Color(0xffabc7ff),
      onTertiaryFixedVariant: Color(0xff153566),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffafaff),
      surfaceTint: Color(0xff9fcafc),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa4ceff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffafaff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbeccdf),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffbfaff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb2cbff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff101418),
      onBackground: Color(0xffe1e2e8),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff42474e),
      onSurfaceVariant: Color(0xfffafaff),
      outline: Color(0xffc7cbd3),
      outlineVariant: Color(0xffc7cbd3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2e8),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff002c4c),
      primaryFixed: Color(0xffd8e8ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa4ceff),
      onPrimaryFixedVariant: Color(0xff00172c),
      secondaryFixed: Color(0xffdae8fc),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbeccdf),
      onSecondaryFixedVariant: Color(0xff091725),
      tertiaryFixed: Color(0xffdde7ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffb2cbff),
      onTertiaryFixedVariant: Color(0xff001535),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0e12),
      surfaceContainerLow: Color(0xff191c20),
      surfaceContainer: Color(0xff1d2024),
      surfaceContainerHigh: Color(0xff272a2f),
      surfaceContainerHighest: Color(0xff32353a),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        fontFamily: FontFamily.notoSansJP,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      surface: surface,
      onSurface: onSurface,
      surfaceContainerHighest: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
