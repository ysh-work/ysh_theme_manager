import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

import 'theme_config.dart';

class AppThemeBuilder extends ThemeBuilder<ThemeConfig> {
  @override
  Color colorBuilder(ThemeConfig config) => config.color;

  @override
  ThemeData? themeBuilder(ThemeConfig config) {
    return ThemeData(
        colorSchemeSeed: config.color, useMaterial3: config.useMaterial3);
  }

  @override
  ThemeData? darkThemeBuilder(ThemeConfig config) {
    return ThemeData(
      colorSchemeSeed: config.color,
      useMaterial3: config.useMaterial3,
      brightness: Brightness.dark,
    );
  }

  @override
  ThemeMode? themeModeBuilder(ThemeConfig config) {
    return config.themeMode;
  }

  // @override
  // ScrollBehavior? scrollBehaviorBuilder(ThemeConfig config) =>
  //     const CupertinoScrollBehavior();
}
