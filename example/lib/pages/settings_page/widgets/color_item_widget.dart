import 'package:flutter/material.dart';

class ColorItemWidget extends StatelessWidget {
  final bool selected;
  final MaterialColor color;
  final void Function(MaterialColor color) onPressed;
  static const double size = 50;
  const ColorItemWidget({
    Key? key,
    required this.onPressed,
    required this.selected,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final circle = Ink(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () => onPressed(color),
      child: selected
          ? Ink(
              width: size,
              height: size,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: selected
                    ? Border.all(
                        width: 2,
                        color: color,
                      )
                    : null,
              ),
              child: circle,
            )
          : circle,
    );
  }
}
