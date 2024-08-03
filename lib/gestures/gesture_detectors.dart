import 'package:flutter/material.dart';

class MultiGestureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Tap detected');
      },
      onDoubleTap: () {
        print('Double tap detected');
      },
      onLongPress: () {
        print('Long press detected');
      },
      // onPanUpdate: (details) {
      //   print('Pan detected: ${details.localPosition}');
      // },
      onScaleUpdate: (details) {
        print('Scale detected: ${details.scale}');
      },
      child: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Interact with Me',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
