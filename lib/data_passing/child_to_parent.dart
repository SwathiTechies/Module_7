import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String _message = "Hello from Parent";

  void _updateMessage(String newMessage) {
    setState(() {
      _message = newMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Child to Parent Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChildWidget(
              message: _message,
              onUpdateMessage: _updateMessage,
            ),
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String message;
  final ValueChanged<String> onUpdateMessage;

  ChildWidget({required this.message, required this.onUpdateMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          message,
          style: TextStyle(fontSize: 24),
        ),
        ElevatedButton(
          onPressed: () {
            onUpdateMessage("Hello from Child");
          },
          child: Text('Update Message'),
        ),
      ],
    );
  }
}
