import 'package:example/pages/settings_page/settings_page.dart';
import 'package:flutter/material.dart';

class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const SettingsPage()));
      },
      tooltip: 'Settings',
      icon: const Icon(Icons.settings),
    );
  }
}
