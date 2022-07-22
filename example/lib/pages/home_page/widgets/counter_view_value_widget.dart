import 'package:flutter/material.dart';

class CounterViewValueWidget extends StatelessWidget {
  final int counter;
  const CounterViewValueWidget({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('you have pushed the button this many times: '),
        Text(
          counter.toString(),
          style: Theme.of(context).textTheme.headline3,
        )
      ],
    );
  }
}
