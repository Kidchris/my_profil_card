import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            height: 300,
            width: 300,
            padding: const EdgeInsets.all(20.0),
            color: Colors.red,
            child: Image.asset('./assets/chris.jpg'),
          ),
        ),
      ),
    );
  }
}
