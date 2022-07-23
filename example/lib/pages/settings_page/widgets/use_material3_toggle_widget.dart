import 'package:example/app/theme/theme_config.dart';
import 'package:example/app/theme/theme_manager_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

class UseMaterial3ToggleWidget extends StatelessWidget {
  const UseMaterial3ToggleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value:
          context.watch<ThemeManager<ThemeConfig>>().state.config.useMaterial3,
      title: const Text('Material 3'),
      onChanged: (value) {
        context.read<ThemeManager<ThemeConfig>>().updateUseMaterial3(value);
      },
    );
  }
}
