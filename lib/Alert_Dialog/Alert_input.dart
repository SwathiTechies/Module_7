import 'package:flutter/material.dart';

class AlertDialogWithInputDemo extends StatefulWidget {
  @override
  _AlertDialogWithInputDemoState createState() => _AlertDialogWithInputDemoState();
}

class _AlertDialogWithInputDemoState extends State<AlertDialogWithInputDemo> {
  String _inputValue = '';

  void _showInputDialog(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Input AlertDialog'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(hintText: 'Enter something'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                setState(() {
                  _inputValue = _controller.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () => _showInputDialog(context),
          child: Text('Show Input AlertDialog'),
        ),
        SizedBox(height: 20),
        Text(
          'Entered value: $_inputValue',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
