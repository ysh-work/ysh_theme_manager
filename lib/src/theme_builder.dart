import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ysh_theme_manager/src/theme_state.dart';

abstract class ThemeBuilder<ThemeConfig> {
  Color? colorBuilder(ThemeConfig config) {}
  ThemeData? themeBuilder(ThemeConfig config) {}
  ThemeData? darkThemeBuilder(ThemeConfig config) {}
  ThemeMode? themeModeBuilder(ThemeConfig config) {}
  ThemeData? highContrastThemeBuilder(ThemeConfig config) {}
  ThemeData? highContrastDarkThemeBuilder(ThemeConfig config) {}
  ScrollBehavior? scrollBehaviorBuilder(ThemeConfig config) {}

  @nonVirtual
  ThemeState<ThemeConfig> build(ThemeConfig config) => ThemeState(
        config: config,
        color: colorBuilder(config),
        theme: themeBuilder(config),
        darkTheme: darkThemeBuilder(config),
        themeMode: themeModeBuilder(config),
        highContrastTheme: highContrastThemeBuilder(config),
        highContrastDarkTheme: highContrastDarkThemeBuilder(config),
        scrollBehavior: scrollBehaviorBuilder(config),
      );
}
