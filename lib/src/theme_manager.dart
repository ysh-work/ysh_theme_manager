import 'package:flutter/material.dart';
import 'package:ysh_theme_manager/src/theme_builder.dart';
import 'package:ysh_theme_manager/src/theme_state.dart';

class ThemeManager<ThemeConfig> extends ChangeNotifier {
  final ThemeBuilder<ThemeConfig> builder;
  ThemeState<ThemeConfig> state;

  ThemeManager({
    required this.builder,
    required ThemeConfig initial,
  }) : state = builder.build(initial);

  void updateTheme(
    ThemeConfig config, {
    bool changeColor = false,
    bool changeTheme = false,
    bool changeDarkTheme = false,
    bool changeThemeMode = false,
    bool changeHighContrastTheme = false,
    bool changeHighContrastDarkTheme = false,
    bool changeScrollBehavior = false,
  }) {
    state = state.copyWith(
      color: changeColor ? builder.colorBuilder(config) : null,
      theme: changeTheme ? builder.themeBuilder(config) : null,
      darkTheme: changeDarkTheme ? builder.darkThemeBuilder(config) : null,
      themeMode: changeThemeMode ? builder.themeModeBuilder(config) : null,
      highContrastTheme: changeHighContrastTheme
          ? builder.highContrastThemeBuilder(config)
          : null,
      highContrastDarkTheme: changeHighContrastDarkTheme
          ? builder.highContrastDarkThemeBuilder(config)
          : null,
      scrollBehavior:
          changeScrollBehavior ? builder.scrollBehaviorBuilder(config) : null,
      config: config,
    );
    notifyListeners();
  }
}
