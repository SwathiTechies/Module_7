import 'package:flutter/material.dart';


class Counter {
  int value = 0;
  void increment() => value++;
}

class CounterProvider extends InheritedWidget {
  final Counter counter;

  CounterProvider({required Widget child, required this.counter}) : super(child: child);

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return counter != oldWidget.counter;
  }

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }
}

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context)?.counter;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:', style:
              TextStyle(fontSize: 22),),
            Text(
              '${counter?.value ?? 0}',
              style: TextStyle(color: Colors.yellow),
            ),
            ElevatedButton(
              onPressed: () {
                counter?.increment();
                (context as Element).markNeedsBuild();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
