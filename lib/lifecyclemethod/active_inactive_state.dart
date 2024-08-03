import 'package:flutter/material.dart';

class ActiveInactiveWidget extends StatefulWidget {
  @override
  _ActiveInactiveWidgetState createState() => _ActiveInactiveWidgetState();
}

class _ActiveInactiveWidgetState extends State<ActiveInactiveWidget> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    print('initState called');
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    print('dispose called');
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      print('App is in background');
    } else if (state == AppLifecycleState.resumed) {
      print('App is in foreground');
    }
  }

  @override
  void deactivate() {
    print('deactivate called');
    super.deactivate();
  }

  @override
  void activate() {
    print('activate called');
    super.activate();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Watch the console for lifecycle events'),
      ],
    );
  }
}
