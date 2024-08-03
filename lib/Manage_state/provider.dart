import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class CounterWidgetProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('You have pushed the button this many times:'),
        Text(
          '${counter.value}',
          style: Theme.of(context).textTheme.headline4,
        ),
        ElevatedButton(
          onPressed: counter.increment,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
