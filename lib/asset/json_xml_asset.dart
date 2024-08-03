import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class JsonExample extends StatefulWidget {
  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {
  late Map<String, dynamic> _data;

  @override
  void initState() {
    super.initState();
    _loadJson();
  }

  Future<void> _loadJson() async {
    final String response = await rootBundle.loadString('assets/data/config.json');
    final data = await json.decode(response);
    setState(() {
      _data = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JSON Asset Example')),
      body: Center(
        child: _data == null
            ? CircularProgressIndicator()
            : Text('Config value: ${_data['some_key']}'),
      ),
    );
  }
}
