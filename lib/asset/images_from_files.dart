import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class FileImageExample extends StatefulWidget {
  @override
  _FileImageExampleState createState() => _FileImageExampleState();
}

class _FileImageExampleState extends State<FileImageExample> {
  late File _imageFile;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/my_image.png';
    setState(() {
      _imageFile = File(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('File Image Example')),
      body: Center(
        child: _imageFile == null
            ? CircularProgressIndicator()
            : Image.file(_imageFile),
      ),
    );
  }
}
