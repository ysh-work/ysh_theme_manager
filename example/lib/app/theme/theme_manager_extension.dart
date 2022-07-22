import 'package:flutter/material.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

import 'theme_config.dart';

extension ThemeManagerExtension on ThemeManager<ThemeConfig> {
  void updateColor(MaterialColor color) {
    updateTheme(
      state.config.copyWith(color: color),
      changeTheme: true,
      changeDarkTheme: true,
    );
  }

  void updateUseMaterial3(bool useMaterial3) {
    updateTheme(
      state.config.copyWith(useMaterial3: useMaterial3),
      changeTheme: true,
      changeDarkTheme: true,
    );
  }

  void updateThemeMode(ThemeMode themeMode) {
    updateTheme(
      state.config.copyWith(themeMode: themeMode),
      changeThemeMode: true,
    );
  }
}
