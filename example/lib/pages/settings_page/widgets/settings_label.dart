import 'package:flutter/material.dart';

class SettingsLabel extends StatelessWidget {
  final String label;
  const SettingsLabel(
    this.label, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8, bottom: 12),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
}
