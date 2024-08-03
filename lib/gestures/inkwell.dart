import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('InkWell Example')),
      body: Center(
        child: InkWell(
          onTap: () {
            print('InkWell tapped');
          },
          child: Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.red,
            child: Text('Tap Me'),
          ),
        ),
      ),
    );
  }
}
