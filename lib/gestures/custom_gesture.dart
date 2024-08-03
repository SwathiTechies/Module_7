import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomGestureWidget extends StatefulWidget {
  @override
  _CustomGestureWidgetState createState() => _CustomGestureWidgetState();
}

class _CustomGestureWidgetState extends State<CustomGestureWidget> {
  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      gestures: {
        CustomGestureRecognizer: GestureRecognizerFactoryWithHandlers<CustomGestureRecognizer>(
              () => CustomGestureRecognizer(),
              (CustomGestureRecognizer instance) {
            instance.onCustomGesture = () {
              print('Custom gesture detected');
            };
          },
        ),
      },
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Custom Gesture',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class CustomGestureRecognizer extends OneSequenceGestureRecognizer {
  VoidCallback? onCustomGesture;

  @override
  void addPointer(PointerEvent event) {
    startTrackingPointer(event.pointer);
  }

  @override
  void handleEvent(PointerEvent event) {
    if (event is PointerUpEvent) {
      onCustomGesture?.call();
    }
  }

  @override
  void didStopTrackingLastPointer(int pointer) {}

  @override
  String get debugDescription => 'custom gesture recognizer';
}
