import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//need add in main dart MessageProvider in runapp and ParentWidget in home

class MessageProvider with ChangeNotifier {
  String _message = "Hello from Provider";

  String get message => _message;

  void updateMessage(String newMessage) {
    _message = newMessage;
    notifyListeners();
  }
}

class ParentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MessageProvider>(
              builder: (context, provider, child) => Text(
                provider.message,
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: 20),
            ChildWidget(),
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MessageProvider>(context, listen: false);

    return ElevatedButton(
      onPressed: () {
        provider.updateMessage("Hello from Child via Provider");
      },
      child: Text('Update Message'),
    );
  }
}
