import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String _message = "Hello from Parent";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Parent to Child Example')),
      body: Center(
        child: ChildWidget(message: _message),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String message;

  ChildWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontSize: 24),
    );
  }
}
