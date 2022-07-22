import 'package:example/app/theme/theme_config.dart';
import 'package:example/app/theme/theme_manager_extension.dart';
import 'package:example/pages/settings_page/widgets/color_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ysh_theme_manager/ysh_theme_manager.dart';

class ThemeColorListWidget extends StatelessWidget {
  const ThemeColorListWidget({
    Key? key,
  }) : super(key: key);

  static const _separator = SizedBox(width: 8);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ColorItemWidget.size,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => ColorItemWidget(
                selected: context
                        .watch<ThemeManager<ThemeConfig>>()
                        .state
                        .config
                        .color ==
                    Colors.primaries[i],
                color: Colors.primaries[i],
                onPressed: (color) {
                  context.read<ThemeManager<ThemeConfig>>().updateColor(color);
                },
              ),
          separatorBuilder: (context, _) => _separator,
          itemCount: Colors.primaries.length),
    );
  }
}
