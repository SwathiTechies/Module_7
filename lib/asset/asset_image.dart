import 'package:flutter/material.dart';

class AssetImages extends StatelessWidget {
  const AssetImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asset Image Example')),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/but.png')),
            Container(
                height: 100,
                width: 100,
                child: Image.network('http://www.freepngclipart.com/download/lion/87951-lion-png-image-high-quality.png')),
            FadeInImage.assetNetwork(
              placeholder: 'assets/images/but.png',
              image: 'http://www.freepngclipart.com/download/lion/87951-lion-png-image-high-quality.png',
            ),
          ],
        ),
      ),
    );
  }
}
