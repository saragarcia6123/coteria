import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006b5d),
      surfaceTint: Color(0xff006b5d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff53c9b3),
      onPrimaryContainer: Color(0xff003029),
      secondary: Color(0xff3e665d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc2ede2),
      onSecondaryContainer: Color(0xff285048),
      tertiary: Color(0xff3b6474),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbbe5f8),
      onTertiaryContainer: Color(0xff204b5a),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff5fbf7),
      onSurface: Color(0xff171d1b),
      onSurfaceVariant: Color(0xff3d4946),
      outline: Color(0xff6d7a76),
      outlineVariant: Color(0xffbcc9c5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3230),
      inversePrimary: Color(0xff65dac4),
      primaryFixed: Color(0xff83f6df),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff65dac4),
      onPrimaryFixedVariant: Color(0xff005045),
      secondaryFixed: Color(0xffc0ebe0),
      onSecondaryFixed: Color(0xff00201b),
      secondaryFixedDim: Color(0xffa5cfc4),
      onSecondaryFixedVariant: Color(0xff254e46),
      tertiaryFixed: Color(0xffbfe9fc),
      onTertiaryFixed: Color(0xff001f29),
      tertiaryFixedDim: Color(0xffa3cddf),
      onTertiaryFixedVariant: Color(0xff214c5b),
      surfaceDim: Color(0xffd6dbd8),
      surfaceBright: Color(0xfff5fbf7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffeaefec),
      surfaceContainerHigh: Color(0xffe4e9e6),
      surfaceContainerHighest: Color(0xffdee4e1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff004c41),
      surfaceTint: Color(0xff006b5d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff008472),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff214a42),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff547c73),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1d4857),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff527a8b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf7),
      onSurface: Color(0xff171d1b),
      onSurfaceVariant: Color(0xff394542),
      outline: Color(0xff55625e),
      outlineVariant: Color(0xff707d79),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3230),
      inversePrimary: Color(0xff65dac4),
      primaryFixed: Color(0xff008472),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00685a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff547c73),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff3b635b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff527a8b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff386171),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd8),
      surfaceBright: Color(0xfff5fbf7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffeaefec),
      surfaceContainerHigh: Color(0xffe4e9e6),
      surfaceContainerHighest: Color(0xffdee4e1),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002821),
      surfaceTint: Color(0xff006b5d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff004c41),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff002821),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff214a42),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002632),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1d4857),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff5fbf7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1a2623),
      outline: Color(0xff394542),
      outlineVariant: Color(0xff394542),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c3230),
      inversePrimary: Color(0xff95ffe9),
      primaryFixed: Color(0xff004c41),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00332c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff214a42),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff06332c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1d4857),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003140),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd8),
      surfaceBright: Color(0xfff5fbf7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff5f2),
      surfaceContainer: Color(0xffeaefec),
      surfaceContainerHigh: Color(0xffe4e9e6),
      surfaceContainerHighest: Color(0xffdee4e1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6bdfc9),
      surfaceTint: Color(0xff65dac4),
      onPrimary: Color(0xff00382f),
      primaryContainer: Color(0xff3bb5a0),
      onPrimaryContainer: Color(0xff001c17),
      secondary: Color(0xffa5cfc4),
      onSecondary: Color(0xff0b372f),
      secondaryContainer: Color(0xff1b443c),
      onSecondaryContainer: Color(0xffafdacf),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff023544),
      tertiaryContainer: Color(0xffb1dbee),
      onTertiaryContainer: Color(0xff184454),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1513),
      onSurface: Color(0xffdee4e1),
      onSurfaceVariant: Color(0xffbcc9c5),
      outline: Color(0xff86948f),
      outlineVariant: Color(0xff3d4946),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4e1),
      inversePrimary: Color(0xff006b5d),
      primaryFixed: Color(0xff83f6df),
      onPrimaryFixed: Color(0xff00201b),
      primaryFixedDim: Color(0xff65dac4),
      onPrimaryFixedVariant: Color(0xff005045),
      secondaryFixed: Color(0xffc0ebe0),
      onSecondaryFixed: Color(0xff00201b),
      secondaryFixedDim: Color(0xffa5cfc4),
      onSecondaryFixedVariant: Color(0xff254e46),
      tertiaryFixed: Color(0xffbfe9fc),
      onTertiaryFixed: Color(0xff001f29),
      tertiaryFixedDim: Color(0xffa3cddf),
      onTertiaryFixedVariant: Color(0xff214c5b),
      surfaceDim: Color(0xff0f1513),
      surfaceBright: Color(0xff343a39),
      surfaceContainerLowest: Color(0xff0a0f0e),
      surfaceContainerLow: Color(0xff171d1b),
      surfaceContainer: Color(0xff1b211f),
      surfaceContainerHigh: Color(0xff252b29),
      surfaceContainerHighest: Color(0xff303634),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff6bdfc9),
      surfaceTint: Color(0xff65dac4),
      onPrimary: Color(0xff001c17),
      primaryContainer: Color(0xff3bb5a0),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffa9d3c9),
      onSecondary: Color(0xff001a16),
      secondaryContainer: Color(0xff70998f),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff023544),
      tertiaryContainer: Color(0xffb1dbee),
      onTertiaryContainer: Color(0xff00232e),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1513),
      onSurface: Color(0xfff7fcf9),
      onSurfaceVariant: Color(0xffc0cec9),
      outline: Color(0xff98a6a1),
      outlineVariant: Color(0xff798682),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4e1),
      inversePrimary: Color(0xff005247),
      primaryFixed: Color(0xff83f6df),
      onPrimaryFixed: Color(0xff001511),
      primaryFixedDim: Color(0xff65dac4),
      onPrimaryFixedVariant: Color(0xff003e35),
      secondaryFixed: Color(0xffc0ebe0),
      onSecondaryFixed: Color(0xff001511),
      secondaryFixedDim: Color(0xffa5cfc4),
      onSecondaryFixedVariant: Color(0xff133d35),
      tertiaryFixed: Color(0xffbfe9fc),
      onTertiaryFixed: Color(0xff00141b),
      tertiaryFixedDim: Color(0xffa3cddf),
      onTertiaryFixedVariant: Color(0xff0c3b4a),
      surfaceDim: Color(0xff0f1513),
      surfaceBright: Color(0xff343a39),
      surfaceContainerLowest: Color(0xff0a0f0e),
      surfaceContainerLow: Color(0xff171d1b),
      surfaceContainer: Color(0xff1b211f),
      surfaceContainerHigh: Color(0xff252b29),
      surfaceContainerHighest: Color(0xff303634),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffecfff9),
      surfaceTint: Color(0xff65dac4),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff6adec8),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffecfff9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffa9d3c9),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffb1dbee),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1513),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff0fef9),
      outline: Color(0xffc0cec9),
      outlineVariant: Color(0xffc0cec9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdee4e1),
      inversePrimary: Color(0xff003029),
      primaryFixed: Color(0xff88fbe4),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff6adec8),
      onPrimaryFixedVariant: Color(0xff001a16),
      secondaryFixed: Color(0xffc4f0e4),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffa9d3c9),
      onSecondaryFixedVariant: Color(0xff001a16),
      tertiaryFixed: Color(0xffc5edff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa7d1e4),
      onTertiaryFixedVariant: Color(0xff001922),
      surfaceDim: Color(0xff0f1513),
      surfaceBright: Color(0xff343a39),
      surfaceContainerLowest: Color(0xff0a0f0e),
      surfaceContainerLow: Color(0xff171d1b),
      surfaceContainer: Color(0xff1b211f),
      surfaceContainerHigh: Color(0xff252b29),
      surfaceContainerHighest: Color(0xff303634),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  /// Custom Color 1
  static const customColor1 = ExtendedColor(
    seed: Color(0xfff3d399),
    value: Color(0xfff3d399),
    light: ColorFamily(
      color: Color(0xff725b2c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff9d89e),
      onColorContainer: Color(0xff564114),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff725b2c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff9d89e),
      onColorContainer: Color(0xff564114),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff725b2c),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xfff9d89e),
      onColorContainer: Color(0xff564114),
    ),
    dark: ColorFamily(
      color: Color(0xfffffeff),
      onColor: Color(0xff402d03),
      colorContainer: Color(0xffefd096),
      onColorContainer: Color(0xff503c0f),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xfffffeff),
      onColor: Color(0xff402d03),
      colorContainer: Color(0xffefd096),
      onColorContainer: Color(0xff503c0f),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xfffffeff),
      onColor: Color(0xff402d03),
      colorContainer: Color(0xffefd096),
      onColorContainer: Color(0xff503c0f),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor1,
      ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

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
