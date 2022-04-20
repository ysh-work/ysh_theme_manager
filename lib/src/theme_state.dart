import 'package:flutter/material.dart';

class ThemeState<ThemeConfig> {
  final Color? color;
  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeMode? themeMode;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final ScrollBehavior? scrollBehavior;
  final ThemeConfig config;

  const ThemeState({
    required this.config,
    this.color,
    this.theme,
    this.darkTheme,
    this.themeMode,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.scrollBehavior,
  });

  ThemeState<ThemeConfig> copyWith({
    ThemeConfig? config,
    Color? color,
    ThemeData? theme,
    ThemeData? darkTheme,
    ThemeMode? themeMode,
    ThemeData? highContrastTheme,
    ThemeData? highContrastDarkTheme,
    ScrollBehavior? scrollBehavior,
  }) {
    return ThemeState(
      config: config ?? this.config,
      color: color ?? this.color,
      theme: theme ?? this.theme,
      darkTheme: darkTheme ?? this.darkTheme,
      themeMode: themeMode ?? this.themeMode,
      highContrastTheme: highContrastTheme ?? this.highContrastTheme,
      highContrastDarkTheme:
          highContrastDarkTheme ?? this.highContrastDarkTheme,
      scrollBehavior: scrollBehavior ?? this.scrollBehavior,
    );
  }
}
