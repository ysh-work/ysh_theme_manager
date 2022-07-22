import 'package:example/app/theme/theme_config.dart';
import 'package:example/app/theme/theme_manager_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

class ThemeModeMenuButton extends StatefulWidget {
  const ThemeModeMenuButton({Key? key}) : super(key: key);

  @override
  State<ThemeModeMenuButton> createState() => _ThemeModeMenuButtonState();
}

class _ThemeModeMenuButtonState extends State<ThemeModeMenuButton> {
  ThemeMode? mode;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mode = context.read<ThemeManager<ThemeConfig>>().state.themeMode;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<ThemeMode>(
      value: mode,
      items: List.generate(
        ThemeMode.values.length,
        (i) => DropdownMenuItem<ThemeMode>(
          value: ThemeMode.values[i],
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 12),
            child: Text(ThemeMode.values[i].label),
          ),
        ),
      ),
      onChanged: (value) {
        if (value == null) return;
        context.read<ThemeManager<ThemeConfig>>().updateThemeMode(value);
        setState(() {
          mode = value;
        });
      },
    );
  }
}

extension ThemeModeExtension on ThemeMode {
  String get label {
    switch (this) {
      case ThemeMode.system:
        return 'System';
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
    }
  }
}
