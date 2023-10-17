import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _data = "hello world";
  void changeText() {
    setState(() {
      if (_data.startsWith('h')) {
        _data = "welcome";
      } else {
        _data = "hello world";
      }
    });
  }

  Widget _changeText() {
    return Column(
      children: [Text(_data)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _changeText(),
            ElevatedButton(
                onPressed: () {
                  changeText();
                },
                child: const Text("press me"))
          ],
        ),
      ),
    );
  }
}
