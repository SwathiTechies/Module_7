import 'package:flutter/material.dart';
import 'package:module7/validation/form_validation.dart';
import 'package:provider/provider.dart';

import 'Alert_Dialog/Alert_input.dart';
import 'Alert_Dialog/basic_alert.dart';
import 'Alert_Dialog/custom_alert.dart';
import 'Manage_state/inheritstate.dart';
import 'Manage_state/provider.dart';
import 'asset/asset_image.dart';
import 'data_passing/child_to_parent.dart';
import 'gestures/custom_gesture.dart';
import 'gestures/gesture_detectors.dart';
import 'gestures/gesture_recognizer.dart';
import 'gestures/inkwell.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

class Counter with ChangeNotifier {
  int _value = 0;

  int get value => _value;

  void increment() {
    _value++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
        //Inherited widget
        // home: CounterProvider(
        //   counter: Counter(),
        //   child: CounterWidget(),
        // ),

        //provider
      //home: CounterWidgetProvider()

      home: CustomGestureWidget(),
    );
  }
}


