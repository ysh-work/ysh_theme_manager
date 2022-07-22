import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

import 'theme/app_theme_builder.dart';
import 'theme/theme_config.dart';

class AppProviders extends StatelessWidget {
  final Widget? child;
  const AppProviders({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeManager<ThemeConfig>>(
          create: (context) => ThemeManager<ThemeConfig>(
            builder: AppThemeBuilder(),
            initial: const ThemeConfig(
              color: Colors.blue,
            ),
          ),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}
