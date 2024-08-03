import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GestureRecognizerWidget extends StatefulWidget {
  const GestureRecognizerWidget({super.key});

  @override
  State<GestureRecognizerWidget> createState() => _GestureRecognizerWidgetState();
}

class _GestureRecognizerWidgetState extends State<GestureRecognizerWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('TapGestureRecognizer Example')),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Tap here',
            style: TextStyle(color: Colors.blue),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Text tapped');
              },
          ),
        ),
      ),
    );
  }
}
