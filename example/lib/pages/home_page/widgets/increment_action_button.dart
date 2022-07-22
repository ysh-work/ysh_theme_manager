import 'package:flutter/material.dart';

class IncrementActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const IncrementActionButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
