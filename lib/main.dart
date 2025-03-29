import 'package:flutter/material.dart';
import 'game_ui.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interplanetary Wars',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameUI(),
    );
  }
}

void main() {
  runApp(MyApp());
}
