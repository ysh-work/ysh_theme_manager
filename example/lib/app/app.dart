import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

import '../pages/home_page/home_page.dart';
import 'theme/theme_config.dart';

class App extends StatelessWidget {
  static const title = 'Ysh Theme Manager Demo';
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeManager = context.watch<ThemeManager<ThemeConfig>>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      color: themeManager.state.color,
      theme: themeManager.state.theme,
      darkTheme: themeManager.state.darkTheme,
      highContrastTheme: themeManager.state.highContrastTheme,
      highContrastDarkTheme: themeManager.state.highContrastDarkTheme,
      themeMode: themeManager.state.themeMode,
      scrollBehavior: themeManager.state.scrollBehavior,
      home: const HomePage(title: title),
    );
  }
}
