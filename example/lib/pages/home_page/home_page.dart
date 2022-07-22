import 'package:example/pages/home_page/widgets/counter_view_value_widget.dart';
import 'package:example/pages/home_page/widgets/increment_action_button.dart';
import 'package:example/pages/home_page/widgets/settings_icon_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: const [
          SettingsIconButton(),
        ],
      ),
      body: Center(
        child: CounterViewValueWidget(counter: _counter),
      ),
      floatingActionButton: IncrementActionButton(onPressed: _incrementCounter),
    );
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
