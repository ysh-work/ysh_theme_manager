import 'package:flutter/material.dart';

class ThemeConfig {
  final MaterialColor color;
  final bool useMaterial3;
  final ThemeMode themeMode;

  const ThemeConfig({
    required this.color,
    this.useMaterial3 = false,
    this.themeMode = ThemeMode.system,
  });

  ThemeConfig copyWith(
      {MaterialColor? color, bool? useMaterial3, ThemeMode? themeMode}) {
    return ThemeConfig(
      color: color ?? this.color,
      useMaterial3: useMaterial3 ?? this.useMaterial3,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ThemeConfig &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          useMaterial3 == other.useMaterial3 &&
          themeMode == other.themeMode;

  @override
  int get hashCode =>
      color.hashCode ^ useMaterial3.hashCode ^ themeMode.hashCode;
}
