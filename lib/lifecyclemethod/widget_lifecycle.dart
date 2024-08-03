import 'package:flutter/material.dart';

class CounterWidgetLifecycle extends StatefulWidget {
  @override
  _CounterWidgetLifecycleState createState() => _CounterWidgetLifecycleState();
}

class _CounterWidgetLifecycleState extends State<CounterWidgetLifecycle> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    // Initialization code
    print('initState called');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Code to handle changes in dependencies
    print('didChangeDependencies called');
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('You have pushed the button this many times:'),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Clean up resources
    print('dispose called');
    super.dispose();
  }
}
