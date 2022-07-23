import 'package:example/pages/settings_page/widgets/settings_label.dart';
import 'package:example/pages/settings_page/widgets/theme_color_list_widget.dart';
import 'package:example/pages/settings_page/widgets/theme_mode_menu_button.dart';
import 'package:example/pages/settings_page/widgets/use_material3_toggle_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  static const _separator = SizedBox(height: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _separator,
            const SettingsLabel('Theme Mode'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: const [
                  Expanded(child: ThemeModeMenuButton()),
                  SizedBox(width: 32),
                  Expanded(child: UseMaterial3ToggleWidget()),
                ],
              ),
            ),
            _separator,
            const SettingsLabel('Color'),
            const ThemeColorListWidget(),
            _separator,
          ],
        ),
      ),
    );
  }
}
