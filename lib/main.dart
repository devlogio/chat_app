import 'package:chat_app/ui/chat.dart';
import 'package:chat_app/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _view = 'home';

  void changeView(String newView) {
    setState(() {
      _view = newView;
    });
  }

  Widget _getView() {
    if (_view == 'home') {
      return Home(
        openChat: changeView,
      );
    } else {
      return Chat(
        back: changeView,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _getView();
  }
}
